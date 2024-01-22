(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<module-sugar>[:0:]#require|
    (lambda (_$stx34254_)
      (let* ((___stx4235442355_ _$stx34254_)
             (_g3425934278_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4235442355_))))
        (let ((___kont4235742358_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (___kont4235942360_
               (lambda (_L34305_ _L34307_ _L34308_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _L34307_
                                   (cons (cons _L34308_ _L34305_) '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _L34307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? ___stx4235442355_)
              (let ((_e3426334331_ (gx#syntax-e ___stx4235442355_)))
                (let ((_tl3426134338_
                       (let () (declare (not safe)) (##cdr _e3426334331_)))
                      (_hd3426234335_
                       (let () (declare (not safe)) (##car _e3426334331_))))
                  (if (gx#stx-null? _tl3426134338_)
                      (___kont4235742358_)
                      (if (gx#stx-pair? _tl3426134338_)
                          (let ((_e3427234295_ (gx#syntax-e _tl3426134338_)))
                            (let ((_tl3427034302_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3427234295_)))
                                  (_hd3427134299_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3427234295_))))
                              (___kont4235942360_
                               _tl3427034302_
                               _hd3427134299_
                               _hd3426234335_)))
                          (let () (declare (not safe)) (_g3425934278_))))))
              (let () (declare (not safe)) (_g3425934278_)))))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-import|
    (lambda (_$stx34349_)
      (let* ((___stx4238442385_ _$stx34349_)
             (_g3435434394_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4238442385_))))
        (let ((___kont4238742388_
               (lambda (_L34532_ _L34534_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _L34534_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _L34532_ '()))
                                   '())))))
              (___kont4238942390_
               (lambda (_L34461_ _L34463_ _L34464_ _L34465_)
                 (cons _L34465_
                       (cons _L34464_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _L34463_
                                               (foldr (lambda (_g3448634489_
                                                               _g3448734492_)
                                                        (cons _g3448634489_
                                                              _g3448734492_))
                                                      '()
                                                      _L34461_)))
                                   '()))))))
          (let* ((___match4243942440_
                  (lambda (_e3437334401_
                           _hd3437234405_
                           _tl3437134408_
                           _e3437634411_
                           _hd3437534415_
                           _tl3437434418_
                           _e3437934421_
                           _hd3437834425_
                           _tl3437734428_
                           ___splice4239142392_
                           _target3438034431_
                           _tl3438234434_)
                    (letrec ((_loop3438334437_
                              (lambda (_hd3438134441_ _body3438734444_)
                                (if (gx#stx-pair? _hd3438134441_)
                                    (let ((_e3438434447_
                                           (gx#syntax-e _hd3438134441_)))
                                      (let ((_lp-tl3438634454_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3438434447_)))
                                            (_lp-hd3438534451_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3438434447_))))
                                        (_loop3438334437_
                                         _lp-tl3438634454_
                                         (cons _lp-hd3438534451_
                                               _body3438734444_))))
                                    (let ((_body3438834457_
                                           (reverse _body3438734444_)))
                                      (let ((_L34461_ _body3438834457_)
                                            (_L34463_ _tl3437734428_)
                                            (_L34464_ _hd3437834425_)
                                            (_L34465_ _hd3437234405_))
                                        (if (gx#identifier? _L34464_)
                                            (___kont4238942390_
                                             _L34461_
                                             _L34463_
                                             _L34464_
                                             _L34465_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3435434394_)))))))))
                      (_loop3438334437_ _target3438034431_ '()))))
                 (___match4241342414_
                  (lambda (_e3436034502_
                           _hd3435934506_
                           _tl3435834509_
                           _e3436334512_
                           _hd3436234516_
                           _tl3436134519_
                           _e3436634522_
                           _hd3436534526_
                           _tl3436434529_)
                    (let ((_L34532_ _hd3436534526_) (_L34534_ _hd3436234516_))
                      (if (gx#identifier? _L34534_)
                          (___kont4238742388_ _L34532_ _L34534_)
                          (if (gx#stx-pair? _hd3436234516_)
                              (let ((_e3437934421_
                                     (gx#syntax-e _hd3436234516_)))
                                (let ((_tl3437734428_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3437934421_)))
                                      (_hd3437834425_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3437934421_))))
                                  (if (gx#stx-pair/null? _tl3436134519_)
                                      (let ((___splice4239142392_
                                             (gx#syntax-split-splice
                                              _tl3436134519_
                                              '0)))
                                        (let ((_tl3438234434_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4239142392_
                                                  '1)))
                                              (_target3438034431_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4239142392_
                                                  '0))))
                                          (if (gx#stx-null? _tl3438234434_)
                                              (___match4243942440_
                                               _e3436034502_
                                               _hd3435934506_
                                               _tl3435834509_
                                               _e3436334512_
                                               _hd3436234516_
                                               _tl3436134519_
                                               _e3437934421_
                                               _hd3437834425_
                                               _tl3437734428_
                                               ___splice4239142392_
                                               _target3438034431_
                                               _tl3438234434_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3435434394_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3435434394_)))))
                              (let ()
                                (declare (not safe))
                                (_g3435434394_))))))))
            (if (gx#stx-pair? ___stx4238442385_)
                (let ((_e3436034502_ (gx#syntax-e ___stx4238442385_)))
                  (let ((_tl3435834509_
                         (let () (declare (not safe)) (##cdr _e3436034502_)))
                        (_hd3435934506_
                         (let () (declare (not safe)) (##car _e3436034502_))))
                    (if (gx#stx-pair? _tl3435834509_)
                        (let ((_e3436334512_ (gx#syntax-e _tl3435834509_)))
                          (let ((_tl3436134519_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3436334512_)))
                                (_hd3436234516_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3436334512_))))
                            (if (gx#stx-pair? _tl3436134519_)
                                (let ((_e3436634522_
                                       (gx#syntax-e _tl3436134519_)))
                                  (let ((_tl3436434529_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3436634522_)))
                                        (_hd3436534526_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3436634522_))))
                                    (if (gx#stx-null? _tl3436434529_)
                                        (___match4241342414_
                                         _e3436034502_
                                         _hd3435934506_
                                         _tl3435834509_
                                         _e3436334512_
                                         _hd3436234516_
                                         _tl3436134519_
                                         _e3436634522_
                                         _hd3436534526_
                                         _tl3436434529_)
                                        (if (gx#stx-pair? _hd3436234516_)
                                            (let ((_e3437934421_
                                                   (gx#syntax-e
                                                    _hd3436234516_)))
                                              (let ((_tl3437734428_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3437934421_)))
                                                    (_hd3437834425_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3437934421_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3436134519_)
                                                    (let ((___splice4239142392_
                                                           (gx#syntax-split-splice
                                                            _tl3436134519_
                                                            '0)))
                                                      (let ((_tl3438234434_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4239142392_ '1)))
                    (_target3438034431_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4239142392_ '0))))
                (if (gx#stx-null? _tl3438234434_)
                    (___match4243942440_
                     _e3436034502_
                     _hd3435934506_
                     _tl3435834509_
                     _e3436334512_
                     _hd3436234516_
                     _tl3436134519_
                     _e3437934421_
                     _hd3437834425_
                     _tl3437734428_
                     ___splice4239142392_
                     _target3438034431_
                     _tl3438234434_)
                    (let () (declare (not safe)) (_g3435434394_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3435434394_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3435434394_))))))
                                (if (gx#stx-pair? _hd3436234516_)
                                    (let ((_e3437934421_
                                           (gx#syntax-e _hd3436234516_)))
                                      (let ((_tl3437734428_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3437934421_)))
                                            (_hd3437834425_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3437934421_))))
                                        (if (gx#stx-pair/null? _tl3436134519_)
                                            (let ((___splice4239142392_
                                                   (gx#syntax-split-splice
                                                    _tl3436134519_
                                                    '0)))
                                              (let ((_tl3438234434_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4239142392_
                                                        '1)))
                                                    (_target3438034431_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4239142392_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3438234434_)
                                                    (___match4243942440_
                                                     _e3436034502_
                                                     _hd3435934506_
                                                     _tl3435834509_
                                                     _e3436334512_
                                                     _hd3436234516_
                                                     _tl3436134519_
                                                     _e3437934421_
                                                     _hd3437834425_
                                                     _tl3437734428_
                                                     ___splice4239142392_
                                                     _target3438034431_
                                                     _tl3438234434_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3435434394_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3435434394_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3435434394_))))))
                        (let () (declare (not safe)) (_g3435434394_)))))
                (let () (declare (not safe)) (_g3435434394_))))))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-export|
    (lambda (_$stx34554_)
      (let* ((___stx4244242443_ _$stx34554_)
             (_g3455934599_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4244242443_))))
        (let ((___kont4244542446_
               (lambda (_L34737_ _L34739_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _L34739_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _L34737_ '()))
                                   '())))))
              (___kont4244742448_
               (lambda (_L34666_ _L34668_ _L34669_ _L34670_)
                 (cons _L34670_
                       (cons _L34669_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _L34668_
                                               (foldr (lambda (_g3469134694_
                                                               _g3469234697_)
                                                        (cons _g3469134694_
                                                              _g3469234697_))
                                                      '()
                                                      _L34666_)))
                                   '()))))))
          (let* ((___match4249742498_
                  (lambda (_e3457834606_
                           _hd3457734610_
                           _tl3457634613_
                           _e3458134616_
                           _hd3458034620_
                           _tl3457934623_
                           _e3458434626_
                           _hd3458334630_
                           _tl3458234633_
                           ___splice4244942450_
                           _target3458534636_
                           _tl3458734639_)
                    (letrec ((_loop3458834642_
                              (lambda (_hd3458634646_ _body3459234649_)
                                (if (gx#stx-pair? _hd3458634646_)
                                    (let ((_e3458934652_
                                           (gx#syntax-e _hd3458634646_)))
                                      (let ((_lp-tl3459134659_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3458934652_)))
                                            (_lp-hd3459034656_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3458934652_))))
                                        (_loop3458834642_
                                         _lp-tl3459134659_
                                         (cons _lp-hd3459034656_
                                               _body3459234649_))))
                                    (let ((_body3459334662_
                                           (reverse _body3459234649_)))
                                      (let ((_L34666_ _body3459334662_)
                                            (_L34668_ _tl3458234633_)
                                            (_L34669_ _hd3458334630_)
                                            (_L34670_ _hd3457734610_))
                                        (if (gx#identifier? _L34669_)
                                            (___kont4244742448_
                                             _L34666_
                                             _L34668_
                                             _L34669_
                                             _L34670_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3455934599_)))))))))
                      (_loop3458834642_ _target3458534636_ '()))))
                 (___match4247142472_
                  (lambda (_e3456534707_
                           _hd3456434711_
                           _tl3456334714_
                           _e3456834717_
                           _hd3456734721_
                           _tl3456634724_
                           _e3457134727_
                           _hd3457034731_
                           _tl3456934734_)
                    (let ((_L34737_ _hd3457034731_) (_L34739_ _hd3456734721_))
                      (if (gx#identifier? _L34739_)
                          (___kont4244542446_ _L34737_ _L34739_)
                          (if (gx#stx-pair? _hd3456734721_)
                              (let ((_e3458434626_
                                     (gx#syntax-e _hd3456734721_)))
                                (let ((_tl3458234633_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3458434626_)))
                                      (_hd3458334630_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3458434626_))))
                                  (if (gx#stx-pair/null? _tl3456634724_)
                                      (let ((___splice4244942450_
                                             (gx#syntax-split-splice
                                              _tl3456634724_
                                              '0)))
                                        (let ((_tl3458734639_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4244942450_
                                                  '1)))
                                              (_target3458534636_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4244942450_
                                                  '0))))
                                          (if (gx#stx-null? _tl3458734639_)
                                              (___match4249742498_
                                               _e3456534707_
                                               _hd3456434711_
                                               _tl3456334714_
                                               _e3456834717_
                                               _hd3456734721_
                                               _tl3456634724_
                                               _e3458434626_
                                               _hd3458334630_
                                               _tl3458234633_
                                               ___splice4244942450_
                                               _target3458534636_
                                               _tl3458734639_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3455934599_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3455934599_)))))
                              (let ()
                                (declare (not safe))
                                (_g3455934599_))))))))
            (if (gx#stx-pair? ___stx4244242443_)
                (let ((_e3456534707_ (gx#syntax-e ___stx4244242443_)))
                  (let ((_tl3456334714_
                         (let () (declare (not safe)) (##cdr _e3456534707_)))
                        (_hd3456434711_
                         (let () (declare (not safe)) (##car _e3456534707_))))
                    (if (gx#stx-pair? _tl3456334714_)
                        (let ((_e3456834717_ (gx#syntax-e _tl3456334714_)))
                          (let ((_tl3456634724_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3456834717_)))
                                (_hd3456734721_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3456834717_))))
                            (if (gx#stx-pair? _tl3456634724_)
                                (let ((_e3457134727_
                                       (gx#syntax-e _tl3456634724_)))
                                  (let ((_tl3456934734_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3457134727_)))
                                        (_hd3457034731_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3457134727_))))
                                    (if (gx#stx-null? _tl3456934734_)
                                        (___match4247142472_
                                         _e3456534707_
                                         _hd3456434711_
                                         _tl3456334714_
                                         _e3456834717_
                                         _hd3456734721_
                                         _tl3456634724_
                                         _e3457134727_
                                         _hd3457034731_
                                         _tl3456934734_)
                                        (if (gx#stx-pair? _hd3456734721_)
                                            (let ((_e3458434626_
                                                   (gx#syntax-e
                                                    _hd3456734721_)))
                                              (let ((_tl3458234633_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3458434626_)))
                                                    (_hd3458334630_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3458434626_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3456634724_)
                                                    (let ((___splice4244942450_
                                                           (gx#syntax-split-splice
                                                            _tl3456634724_
                                                            '0)))
                                                      (let ((_tl3458734639_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4244942450_ '1)))
                    (_target3458534636_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4244942450_ '0))))
                (if (gx#stx-null? _tl3458734639_)
                    (___match4249742498_
                     _e3456534707_
                     _hd3456434711_
                     _tl3456334714_
                     _e3456834717_
                     _hd3456734721_
                     _tl3456634724_
                     _e3458434626_
                     _hd3458334630_
                     _tl3458234633_
                     ___splice4244942450_
                     _target3458534636_
                     _tl3458734639_)
                    (let () (declare (not safe)) (_g3455934599_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3455934599_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3455934599_))))))
                                (if (gx#stx-pair? _hd3456734721_)
                                    (let ((_e3458434626_
                                           (gx#syntax-e _hd3456734721_)))
                                      (let ((_tl3458234633_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3458434626_)))
                                            (_hd3458334630_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3458434626_))))
                                        (if (gx#stx-pair/null? _tl3456634724_)
                                            (let ((___splice4244942450_
                                                   (gx#syntax-split-splice
                                                    _tl3456634724_
                                                    '0)))
                                              (let ((_tl3458734639_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4244942450_
                                                        '1)))
                                                    (_target3458534636_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4244942450_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3458734639_)
                                                    (___match4249742498_
                                                     _e3456534707_
                                                     _hd3456434711_
                                                     _tl3456334714_
                                                     _e3456834717_
                                                     _hd3456734721_
                                                     _tl3456634724_
                                                     _e3458434626_
                                                     _hd3458334630_
                                                     _tl3458234633_
                                                     ___splice4244942450_
                                                     _target3458534636_
                                                     _tl3458734639_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3455934599_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3455934599_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3455934599_))))))
                        (let () (declare (not safe)) (_g3455934599_)))))
                (let () (declare (not safe)) (_g3455934599_))))))))
  (define |gerbil/core$<module-sugar>[:0:]#defsyntax-for-import-export|
    (lambda (_$stx34759_)
      (let* ((___stx4250042501_ _$stx34759_)
             (_g3476434804_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4250042501_))))
        (let ((___kont4250342504_
               (lambda (_L34942_ _L34944_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _L34944_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _L34942_ '()))
                                   '())))))
              (___kont4250542506_
               (lambda (_L34871_ _L34873_ _L34874_ _L34875_)
                 (cons _L34875_
                       (cons _L34874_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _L34873_
                                               (foldr (lambda (_g3489634899_
                                                               _g3489734902_)
                                                        (cons _g3489634899_
                                                              _g3489734902_))
                                                      '()
                                                      _L34871_)))
                                   '()))))))
          (let* ((___match4255542556_
                  (lambda (_e3478334811_
                           _hd3478234815_
                           _tl3478134818_
                           _e3478634821_
                           _hd3478534825_
                           _tl3478434828_
                           _e3478934831_
                           _hd3478834835_
                           _tl3478734838_
                           ___splice4250742508_
                           _target3479034841_
                           _tl3479234844_)
                    (letrec ((_loop3479334847_
                              (lambda (_hd3479134851_ _body3479734854_)
                                (if (gx#stx-pair? _hd3479134851_)
                                    (let ((_e3479434857_
                                           (gx#syntax-e _hd3479134851_)))
                                      (let ((_lp-tl3479634864_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3479434857_)))
                                            (_lp-hd3479534861_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3479434857_))))
                                        (_loop3479334847_
                                         _lp-tl3479634864_
                                         (cons _lp-hd3479534861_
                                               _body3479734854_))))
                                    (let ((_body3479834867_
                                           (reverse _body3479734854_)))
                                      (let ((_L34871_ _body3479834867_)
                                            (_L34873_ _tl3478734838_)
                                            (_L34874_ _hd3478834835_)
                                            (_L34875_ _hd3478234815_))
                                        (if (gx#identifier? _L34874_)
                                            (___kont4250542506_
                                             _L34871_
                                             _L34873_
                                             _L34874_
                                             _L34875_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3476434804_)))))))))
                      (_loop3479334847_ _target3479034841_ '()))))
                 (___match4252942530_
                  (lambda (_e3477034912_
                           _hd3476934916_
                           _tl3476834919_
                           _e3477334922_
                           _hd3477234926_
                           _tl3477134929_
                           _e3477634932_
                           _hd3477534936_
                           _tl3477434939_)
                    (let ((_L34942_ _hd3477534936_) (_L34944_ _hd3477234926_))
                      (if (gx#identifier? _L34944_)
                          (___kont4250342504_ _L34942_ _L34944_)
                          (if (gx#stx-pair? _hd3477234926_)
                              (let ((_e3478934831_
                                     (gx#syntax-e _hd3477234926_)))
                                (let ((_tl3478734838_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3478934831_)))
                                      (_hd3478834835_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3478934831_))))
                                  (if (gx#stx-pair/null? _tl3477134929_)
                                      (let ((___splice4250742508_
                                             (gx#syntax-split-splice
                                              _tl3477134929_
                                              '0)))
                                        (let ((_tl3479234844_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4250742508_
                                                  '1)))
                                              (_target3479034841_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4250742508_
                                                  '0))))
                                          (if (gx#stx-null? _tl3479234844_)
                                              (___match4255542556_
                                               _e3477034912_
                                               _hd3476934916_
                                               _tl3476834919_
                                               _e3477334922_
                                               _hd3477234926_
                                               _tl3477134929_
                                               _e3478934831_
                                               _hd3478834835_
                                               _tl3478734838_
                                               ___splice4250742508_
                                               _target3479034841_
                                               _tl3479234844_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3476434804_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3476434804_)))))
                              (let ()
                                (declare (not safe))
                                (_g3476434804_))))))))
            (if (gx#stx-pair? ___stx4250042501_)
                (let ((_e3477034912_ (gx#syntax-e ___stx4250042501_)))
                  (let ((_tl3476834919_
                         (let () (declare (not safe)) (##cdr _e3477034912_)))
                        (_hd3476934916_
                         (let () (declare (not safe)) (##car _e3477034912_))))
                    (if (gx#stx-pair? _tl3476834919_)
                        (let ((_e3477334922_ (gx#syntax-e _tl3476834919_)))
                          (let ((_tl3477134929_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3477334922_)))
                                (_hd3477234926_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3477334922_))))
                            (if (gx#stx-pair? _tl3477134929_)
                                (let ((_e3477634932_
                                       (gx#syntax-e _tl3477134929_)))
                                  (let ((_tl3477434939_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3477634932_)))
                                        (_hd3477534936_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3477634932_))))
                                    (if (gx#stx-null? _tl3477434939_)
                                        (___match4252942530_
                                         _e3477034912_
                                         _hd3476934916_
                                         _tl3476834919_
                                         _e3477334922_
                                         _hd3477234926_
                                         _tl3477134929_
                                         _e3477634932_
                                         _hd3477534936_
                                         _tl3477434939_)
                                        (if (gx#stx-pair? _hd3477234926_)
                                            (let ((_e3478934831_
                                                   (gx#syntax-e
                                                    _hd3477234926_)))
                                              (let ((_tl3478734838_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3478934831_)))
                                                    (_hd3478834835_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3478934831_))))
                                                (if (gx#stx-pair/null?
                                                     _tl3477134929_)
                                                    (let ((___splice4250742508_
                                                           (gx#syntax-split-splice
                                                            _tl3477134929_
                                                            '0)))
                                                      (let ((_tl3479234844_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice4250742508_ '1)))
                    (_target3479034841_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice4250742508_ '0))))
                (if (gx#stx-null? _tl3479234844_)
                    (___match4255542556_
                     _e3477034912_
                     _hd3476934916_
                     _tl3476834919_
                     _e3477334922_
                     _hd3477234926_
                     _tl3477134929_
                     _e3478934831_
                     _hd3478834835_
                     _tl3478734838_
                     ___splice4250742508_
                     _target3479034841_
                     _tl3479234844_)
                    (let () (declare (not safe)) (_g3476434804_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3476434804_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3476434804_))))))
                                (if (gx#stx-pair? _hd3477234926_)
                                    (let ((_e3478934831_
                                           (gx#syntax-e _hd3477234926_)))
                                      (let ((_tl3478734838_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3478934831_)))
                                            (_hd3478834835_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3478934831_))))
                                        (if (gx#stx-pair/null? _tl3477134929_)
                                            (let ((___splice4250742508_
                                                   (gx#syntax-split-splice
                                                    _tl3477134929_
                                                    '0)))
                                              (let ((_tl3479234844_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4250742508_
                                                        '1)))
                                                    (_target3479034841_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4250742508_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3479234844_)
                                                    (___match4255542556_
                                                     _e3477034912_
                                                     _hd3476934916_
                                                     _tl3476834919_
                                                     _e3477334922_
                                                     _hd3477234926_
                                                     _tl3477134929_
                                                     _e3478934831_
                                                     _hd3478834835_
                                                     _tl3478734838_
                                                     ___splice4250742508_
                                                     _target3479034841_
                                                     _tl3479234844_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3476434804_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3476434804_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3476434804_))))))
                        (let () (declare (not safe)) (_g3476434804_)))))
                (let () (declare (not safe)) (_g3476434804_))))))))
  (define |gerbil/core$<module-sugar>[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_stx34964_)
       (let* ((_g3496734987_
               (lambda (_g3496834983_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3496834983_)))
              (_g3496635058_
               (lambda (_g3496834991_)
                 (if (gx#stx-pair? _g3496834991_)
                     (let ((_e3497234994_ (gx#syntax-e _g3496834991_)))
                       (let ((_hd3497134998_
                              (let ()
                                (declare (not safe))
                                (##car _e3497234994_)))
                             (_tl3497035001_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3497234994_))))
                         (if (gx#stx-pair/null? _tl3497035001_)
                             (let ((_g42966_
                                    (gx#syntax-split-splice
                                     _tl3497035001_
                                     '0)))
                               (begin
                                 (let ((_g42967_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g42966_)
                                              (##vector-length _g42966_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g42967_ 2)))
                                       (error "Context expects 2 values"
                                              _g42967_)))
                                 (let ((_target3497335004_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g42966_ 0)))
                                       (_tl3497535007_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g42966_ 1))))
                                   (if (gx#stx-null? _tl3497535007_)
                                       (letrec ((_loop3497635010_
                                                 (lambda (_hd3497435014_
                                                          _body3498035017_)
                                                   (if (gx#stx-pair?
                                                        _hd3497435014_)
                                                       (let ((_e3497735020_
                                                              (gx#syntax-e
                                                               _hd3497435014_)))
                                                         (let ((_lp-hd3497835024_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3497735020_)))
                       (_lp-tl3497935027_
                        (let () (declare (not safe)) (##cdr _e3497735020_))))
                   (_loop3497635010_
                    _lp-tl3497935027_
                    (cons _lp-hd3497835024_ _body3498035017_))))
               (let ((_body3498135030_ (reverse _body3498035017_)))
                 ((lambda (_L35034_)
                    (cons 'phi:
                          (cons '1
                                (foldr (lambda (_g3504935052_ _g3505035055_)
                                         (cons _g3504935052_ _g3505035055_))
                                       '()
                                       _L35034_))))
                  _body3498135030_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3497635010_
                                          _target3497335004_
                                          '()))
                                       (_g3496734987_ _g3496834991_)))))
                             (_g3496734987_ _g3496834991_))))
                     (_g3496734987_ _g3496834991_)))))
         (_g3496635058_ _stx34964_)))))
  (define |gerbil/core$<module-sugar>[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_stx35063_)
       (let* ((_g3506635086_
               (lambda (_g3506735082_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3506735082_)))
              (_g3506535157_
               (lambda (_g3506735090_)
                 (if (gx#stx-pair? _g3506735090_)
                     (let ((_e3507135093_ (gx#syntax-e _g3506735090_)))
                       (let ((_hd3507035097_
                              (let ()
                                (declare (not safe))
                                (##car _e3507135093_)))
                             (_tl3506935100_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3507135093_))))
                         (if (gx#stx-pair/null? _tl3506935100_)
                             (let ((_g42968_
                                    (gx#syntax-split-splice
                                     _tl3506935100_
                                     '0)))
                               (begin
                                 (let ((_g42969_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g42968_)
                                              (##vector-length _g42968_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g42969_ 2)))
                                       (error "Context expects 2 values"
                                              _g42969_)))
                                 (let ((_target3507235103_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g42968_ 0)))
                                       (_tl3507435106_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g42968_ 1))))
                                   (if (gx#stx-null? _tl3507435106_)
                                       (letrec ((_loop3507535109_
                                                 (lambda (_hd3507335113_
                                                          _body3507935116_)
                                                   (if (gx#stx-pair?
                                                        _hd3507335113_)
                                                       (let ((_e3507635119_
                                                              (gx#syntax-e
                                                               _hd3507335113_)))
                                                         (let ((_lp-hd3507735123_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3507635119_)))
                       (_lp-tl3507835126_
                        (let () (declare (not safe)) (##cdr _e3507635119_))))
                   (_loop3507535109_
                    _lp-tl3507835126_
                    (cons _lp-hd3507735123_ _body3507935116_))))
               (let ((_body3508035129_ (reverse _body3507935116_)))
                 ((lambda (_L35133_)
                    (cons 'phi:
                          (cons '-1
                                (foldr (lambda (_g3514835151_ _g3514935154_)
                                         (cons _g3514835151_ _g3514935154_))
                                       '()
                                       _L35133_))))
                  _body3508035129_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3507535109_
                                          _target3507235103_
                                          '()))
                                       (_g3506635086_ _g3506735090_)))))
                             (_g3506635086_ _g3506735090_))))
                     (_g3506635086_ _g3506735090_)))))
         (_g3506535157_ _stx35063_)))))
  (define |gerbil/core$<module-sugar>[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx35162_)
       (let* ((_g3516535189_
               (lambda (_g3516635185_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3516635185_)))
              (_g3516435311_
               (lambda (_g3516635193_)
                 (if (gx#stx-pair? _g3516635193_)
                     (let ((_e3517135196_ (gx#syntax-e _g3516635193_)))
                       (let ((_hd3517035200_
                              (let ()
                                (declare (not safe))
                                (##car _e3517135196_)))
                             (_tl3516935203_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3517135196_))))
                         (if (gx#stx-pair? _tl3516935203_)
                             (let ((_e3517435206_
                                    (gx#syntax-e _tl3516935203_)))
                               (let ((_hd3517335210_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3517435206_)))
                                     (_tl3517235213_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3517435206_))))
                                 (if (gx#stx-pair/null? _tl3517235213_)
                                     (let ((_g42970_
                                            (gx#syntax-split-splice
                                             _tl3517235213_
                                             '0)))
                                       (begin
                                         (let ((_g42971_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g42970_)
                                                      (##vector-length
                                                       _g42970_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g42971_ 2)))
                                               (error "Context expects 2 values"
                                                      _g42971_)))
                                         (let ((_target3517535216_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42970_ 0)))
                                               (_tl3517735219_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42970_ 1))))
                                           (if (gx#stx-null? _tl3517735219_)
                                               (letrec ((_loop3517835222_
                                                         (lambda (_hd3517635226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id3518235229_)
                   (if (gx#stx-pair? _hd3517635226_)
                       (let ((_e3517935232_ (gx#syntax-e _hd3517635226_)))
                         (let ((_lp-hd3518035236_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3517935232_)))
                               (_lp-tl3518135239_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3517935232_))))
                           (_loop3517835222_
                            _lp-tl3518135239_
                            (cons _lp-hd3518035236_ _id3518235229_))))
                       (let ((_id3518335242_ (reverse _id3518235229_)))
                         ((lambda (_L35246_ _L35248_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_g3526535268_ _g3526635271_)
                                          (cons _g3526535268_ _g3526635271_))
                                        '()
                                        _L35246_))
                                (let* ((_keys35282_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_g3527335276_
                                                         _g3527435279_)
                                                  (cons _g3527335276_
                                                        _g3527435279_))
                                                '()
                                                _L35246_)))
                                       (_keytab35293_
                                        (let ((_ht35285_ (make-hash-table)))
                                          (for-each
                                           (lambda (_g3528735289_)
                                             (hash-put!
                                              _ht35285_
                                              _g3528735289_
                                              '#t))
                                           _keys35282_)
                                          _ht35285_))
                                       (_imports35296_
                                        (gx#core-expand-import-source
                                         _L35248_))
                                       (_fold-e35306_
                                        (letrec ((_fold-e35299_
                                                  (lambda (_in35302_ _r35304_)
                                                    (if (gx#module-import?
                                                         _in35302_)
                                                        (if (hash-get
                                                             _keytab35293_
                                                             (gx#module-import-name
                                                              _in35302_))
                                                            (cons _in35302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r35304_)
                    _r35304_)
                (if (gx#import-set? _in35302_)
                    (foldl _fold-e35299_
                           _r35304_
                           (gx#import-set-imports _in35302_))
                    _r35304_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35299_)))
                                  (cons 'begin:
                                        (foldl _fold-e35306_
                                               '()
                                               _imports35296_)))
                                (_g3516535189_ _g3516635193_)))
                          _id3518335242_
                          _hd3517335210_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3517835222_
                                                  _target3517535216_
                                                  '()))
                                               (_g3516535189_
                                                _g3516635193_)))))
                                     (_g3516535189_ _g3516635193_))))
                             (_g3516535189_ _g3516635193_))))
                     (_g3516535189_ _g3516635193_)))))
         (_g3516435311_ _stx35162_)))))
  (define |gerbil/core$<module-sugar>[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_stx35316_)
       (let* ((_g3531935343_
               (lambda (_g3532035339_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3532035339_)))
              (_g3531835465_
               (lambda (_g3532035347_)
                 (if (gx#stx-pair? _g3532035347_)
                     (let ((_e3532535350_ (gx#syntax-e _g3532035347_)))
                       (let ((_hd3532435354_
                              (let ()
                                (declare (not safe))
                                (##car _e3532535350_)))
                             (_tl3532335357_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3532535350_))))
                         (if (gx#stx-pair? _tl3532335357_)
                             (let ((_e3532835360_
                                    (gx#syntax-e _tl3532335357_)))
                               (let ((_hd3532735364_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3532835360_)))
                                     (_tl3532635367_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3532835360_))))
                                 (if (gx#stx-pair/null? _tl3532635367_)
                                     (let ((_g42972_
                                            (gx#syntax-split-splice
                                             _tl3532635367_
                                             '0)))
                                       (begin
                                         (let ((_g42973_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g42972_)
                                                      (##vector-length
                                                       _g42972_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g42973_ 2)))
                                               (error "Context expects 2 values"
                                                      _g42973_)))
                                         (let ((_target3532935370_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42972_ 0)))
                                               (_tl3533135373_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42972_ 1))))
                                           (if (gx#stx-null? _tl3533135373_)
                                               (letrec ((_loop3533235376_
                                                         (lambda (_hd3533035380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id3533635383_)
                   (if (gx#stx-pair? _hd3533035380_)
                       (let ((_e3533335386_ (gx#syntax-e _hd3533035380_)))
                         (let ((_lp-hd3533435390_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3533335386_)))
                               (_lp-tl3533535393_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3533335386_))))
                           (_loop3533235376_
                            _lp-tl3533535393_
                            (cons _lp-hd3533435390_ _id3533635383_))))
                       (let ((_id3533735396_ (reverse _id3533635383_)))
                         ((lambda (_L35400_ _L35402_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_g3541935422_ _g3542035425_)
                                          (cons _g3541935422_ _g3542035425_))
                                        '()
                                        _L35400_))
                                (let* ((_keys35436_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_g3542735430_
                                                         _g3542835433_)
                                                  (cons _g3542735430_
                                                        _g3542835433_))
                                                '()
                                                _L35400_)))
                                       (_keytab35447_
                                        (let ((_ht35439_ (make-hash-table)))
                                          (for-each
                                           (lambda (_g3544135443_)
                                             (hash-put!
                                              _ht35439_
                                              _g3544135443_
                                              '#t))
                                           _keys35436_)
                                          _ht35439_))
                                       (_imports35450_
                                        (gx#core-expand-import-source
                                         _L35402_))
                                       (_fold-e35460_
                                        (letrec ((_fold-e35453_
                                                  (lambda (_in35456_ _r35458_)
                                                    (if (gx#module-import?
                                                         _in35456_)
                                                        (if (hash-get
                                                             _keytab35447_
                                                             (gx#module-import-name
                                                              _in35456_))
                                                            _r35458_
                                                            (cons _in35456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r35458_))
                (if (gx#import-set? _in35456_)
                    (foldl _fold-e35453_
                           _r35458_
                           (gx#import-set-imports _in35456_))
                    (cons _in35456_ _r35458_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35453_)))
                                  (cons 'begin:
                                        (foldl _fold-e35460_
                                               '()
                                               _imports35450_)))
                                (_g3531935343_ _g3532035347_)))
                          _id3533735396_
                          _hd3532735364_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3533235376_
                                                  _target3532935370_
                                                  '()))
                                               (_g3531935343_
                                                _g3532035347_)))))
                                     (_g3531935343_ _g3532035347_))))
                             (_g3531935343_ _g3532035347_))))
                     (_g3531935343_ _g3532035347_)))))
         (_g3531835465_ _stx35316_)))))
  (define |gerbil/core$<module-sugar>[1]#module-import-rename|
    (lambda (_in35517_ _rename35519_)
      (gx#make-module-import
       (gx#module-import-source _in35517_)
       _rename35519_
       (gx#module-import-phi _in35517_)
       (gx#module-import-weak? _in35517_))))
  (define |gerbil/core$<module-sugar>[1]#prefix-identifier-key|
    (lambda (_name35470_ _pre35472_)
      (let* ((_name3547335481_ _name35470_)
             (_else3547535493_
              (lambda () (make-symbol _pre35472_ _name35470_)))
             (_K3547735501_
              (lambda (_mark35497_ _id35499_)
                (cons (make-symbol _pre35472_ _id35499_) _mark35497_))))
        (if (let () (declare (not safe)) (##pair? _name3547335481_))
            (let ((_hd3547835505_
                   (let () (declare (not safe)) (##car _name3547335481_)))
                  (_tl3547935508_
                   (let () (declare (not safe)) (##cdr _name3547335481_))))
              (let* ((_id35511_ _hd3547835505_) (_mark35514_ _tl3547935508_))
                (declare (not safe))
                (_K3547735501_ _mark35514_ _id35511_)))
            (let () (declare (not safe)) (_else3547535493_))))))
  (define |gerbil/core$<module-sugar>[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_stx35521_)
       (let* ((_g3552435557_
               (lambda (_g3552535553_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3552535553_)))
              (_g3552335743_
               (lambda (_g3552535561_)
                 (if (gx#stx-pair? _g3552535561_)
                     (let ((_e3553135564_ (gx#syntax-e _g3552535561_)))
                       (let ((_hd3553035568_
                              (let ()
                                (declare (not safe))
                                (##car _e3553135564_)))
                             (_tl3552935571_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3553135564_))))
                         (if (gx#stx-pair? _tl3552935571_)
                             (let ((_e3553435574_
                                    (gx#syntax-e _tl3552935571_)))
                               (let ((_hd3553335578_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3553435574_)))
                                     (_tl3553235581_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3553435574_))))
                                 (if (gx#stx-pair/null? _tl3553235581_)
                                     (let ((_g42974_
                                            (gx#syntax-split-splice
                                             _tl3553235581_
                                             '0)))
                                       (begin
                                         (let ((_g42975_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g42974_)
                                                      (##vector-length
                                                       _g42974_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g42975_ 2)))
                                               (error "Context expects 2 values"
                                                      _g42975_)))
                                         (let ((_target3553535584_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42974_ 0)))
                                               (_tl3553735587_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42974_ 1))))
                                           (if (gx#stx-null? _tl3553735587_)
                                               (letrec ((_loop3553835590_
                                                         (lambda (_hd3553635594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _new-id3554235597_
                          _id3554335599_)
                   (if (gx#stx-pair? _hd3553635594_)
                       (let ((_e3553935602_ (gx#syntax-e _hd3553635594_)))
                         (let ((_lp-hd3554035606_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3553935602_)))
                               (_lp-tl3554135609_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3553935602_))))
                           (if (gx#stx-pair? _lp-hd3554035606_)
                               (let ((_e3554835612_
                                      (gx#syntax-e _lp-hd3554035606_)))
                                 (let ((_hd3554735616_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3554835612_)))
                                       (_tl3554635619_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3554835612_))))
                                   (if (gx#stx-pair? _tl3554635619_)
                                       (let ((_e3555135622_
                                              (gx#syntax-e _tl3554635619_)))
                                         (let ((_hd3555035626_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3555135622_)))
                                               (_tl3554935629_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3555135622_))))
                                           (if (gx#stx-null? _tl3554935629_)
                                               (_loop3553835590_
                                                _lp-tl3554135609_
                                                (cons _hd3555035626_
                                                      _new-id3554235597_)
                                                (cons _hd3554735616_
                                                      _id3554335599_))
                                               (_g3552435557_ _g3552535561_))))
                                       (_g3552435557_ _g3552535561_))))
                               (_g3552435557_ _g3552535561_))))
                       (let ((_new-id3554435632_ (reverse _new-id3554235597_))
                             (_id3554535635_ (reverse _id3554335599_)))
                         ((lambda (_L35638_ _L35640_ _L35641_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_g3565935662_
                                                      _g3566035665_)
                                               (cons _g3565935662_
                                                     _g3566035665_))
                                             '()
                                             _L35640_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_g3566735670_
                                                      _g3566835673_)
                                               (cons _g3566735670_
                                                     _g3566835673_))
                                             '()
                                             _L35638_)))
                                (let* ((_keytab35676_ (make-hash-table))
                                       (_found35679_ (make-hash-table))
                                       (_g42976_
                                        (for-each
                                         (lambda (_id35682_ _new-id35684_)
                                           (hash-put!
                                            _keytab35676_
                                            (gx#core-identifier-key _id35682_)
                                            (gx#core-identifier-key
                                             _new-id35684_)))
                                         (foldr (lambda (_g3568535688_
                                                         _g3568635691_)
                                                  (cons _g3568535688_
                                                        _g3568635691_))
                                                '()
                                                _L35640_)
                                         (foldr (lambda (_g3569335696_
                                                         _g3569435699_)
                                                  (cons _g3569335696_
                                                        _g3569435699_))
                                                '()
                                                _L35638_)))
                                       (_imports35704_
                                        (gx#core-expand-import-source
                                         _L35641_))
                                       (_fold-e35724_
                                        (letrec ((_fold-e35707_
                                                  (lambda (_in35710_ _r35712_)
                                                    (if (gx#module-import?
                                                         _in35710_)
                                                        (let* ((_name35714_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in35710_))
                       (_$e35717_ (hash-get _keytab35676_ _name35714_)))
                  (if _$e35717_
                      ((lambda (_rename35721_)
                         (hash-put! _found35679_ _name35714_ '#t)
                         (cons (let ()
                                 (declare (not safe))
                                 (|gerbil/core$<module-sugar>[1]#module-import-rename|
                                  _in35710_
                                  _rename35721_))
                               _r35712_))
                       _$e35717_)
                      (cons _in35710_ _r35712_)))
                (if (gx#import-set? _in35710_)
                    (foldl _fold-e35707_
                           _r35712_
                           (gx#import-set-imports _in35710_))
                    (cons _in35710_ _r35712_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e35707_))
                                       (_new-imports35727_
                                        (foldl _fold-e35724_
                                               '()
                                               _imports35704_)))
                                  (for-each
                                   (lambda (_id35732_)
                                     (if (hash-get
                                          _found35679_
                                          (gx#core-identifier-key _id35732_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; identifier is not in the import set"
                                          _stx35521_
                                          _id35732_)))
                                   (foldr (lambda (_g3573435737_ _g3573535740_)
                                            (cons _g3573435737_ _g3573535740_))
                                          '()
                                          _L35640_))
                                  (cons 'begin: _new-imports35727_))
                                (_g3552435557_ _g3552535561_)))
                          _new-id3554435632_
                          _id3554535635_
                          _hd3553335578_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3553835590_
                                                  _target3553535584_
                                                  '()
                                                  '()))
                                               (_g3552435557_
                                                _g3552535561_)))))
                                     (_g3552435557_ _g3552535561_))))
                             (_g3552435557_ _g3552535561_))))
                     (_g3552435557_ _g3552535561_)))))
         (_g3552335743_ _stx35521_)))))
  (define |gerbil/core$<module-sugar>[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_stx35749_)
       (let* ((_g3575235770_
               (lambda (_g3575335766_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3575335766_)))
              (_g3575135849_
               (lambda (_g3575335774_)
                 (if (gx#stx-pair? _g3575335774_)
                     (let ((_e3575835777_ (gx#syntax-e _g3575335774_)))
                       (let ((_hd3575735781_
                              (let ()
                                (declare (not safe))
                                (##car _e3575835777_)))
                             (_tl3575635784_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3575835777_))))
                         (if (gx#stx-pair? _tl3575635784_)
                             (let ((_e3576135787_
                                    (gx#syntax-e _tl3575635784_)))
                               (let ((_hd3576035791_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3576135787_)))
                                     (_tl3575935794_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3576135787_))))
                                 (if (gx#stx-pair? _tl3575935794_)
                                     (let ((_e3576435797_
                                            (gx#syntax-e _tl3575935794_)))
                                       (let ((_hd3576335801_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3576435797_)))
                                             (_tl3576235804_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3576435797_))))
                                         (if (gx#stx-null? _tl3576235804_)
                                             ((lambda (_L35807_ _L35809_)
                                                (if (gx#identifier? _L35807_)
                                                    (let* ((_pre35825_
                                                            (gx#stx-e
                                                             _L35807_))
                                                           (_imports35828_
                                                            (gx#core-expand-import-source
                                                             _L35809_))
                                                           (_rename-e35834_
                                                            (lambda (_name35831_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core$<module-sugar>[1]#prefix-identifier-key|
                         _name35831_
                         _pre35825_))))
                   (_fold-e35844_
                    (letrec ((_fold-e35837_
                              (lambda (_in35840_ _r35842_)
                                (if (gx#module-import? _in35840_)
                                    (cons (let ((__tmp42977
                                                 (_rename-e35834_
                                                  (gx#module-import-name
                                                   _in35840_))))
                                            (declare (not safe))
                                            (|gerbil/core$<module-sugar>[1]#module-import-rename|
                                             _in35840_
                                             __tmp42977))
                                          _r35842_)
                                    (if (gx#import-set? _in35840_)
                                        (foldl _fold-e35837_
                                               _r35842_
                                               (gx#import-set-imports
                                                _in35840_))
                                        (cons _in35840_ _r35842_))))))
                      _fold-e35837_)))
              (cons 'begin: (foldl _fold-e35844_ '() _imports35828_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3575235770_
                                                     _g3575335774_)))
                                              _hd3576335801_
                                              _hd3576035791_)
                                             (_g3575235770_ _g3575335774_))))
                                     (_g3575235770_ _g3575335774_))))
                             (_g3575235770_ _g3575335774_))))
                     (_g3575235770_ _g3575335774_)))))
         (_g3575135849_ _stx35749_)))))
  (define |gerbil/core$<module-sugar>[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_stx35853_)
       (letrec ((_flatten35856_
                 (lambda (_list-of-lists36111_)
                   (foldr (lambda (_v36114_ _acc36116_)
                            (if (null? _v36114_)
                                _acc36116_
                                (if (pair? _v36114_)
                                    (append (_flatten35856_ _v36114_)
                                            _acc36116_)
                                    (cons _v36114_ _acc36116_))))
                          '()
                          _list-of-lists36111_)))
                (_expand-path35858_
                 (lambda (_top35979_ _mod35981_)
                   (let* ((___stx4255842559_ _mod35981_)
                          (_g3598436006_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              ___stx4255842559_))))
                     (let ((___kont4256142562_
                            (lambda (_L36074_ _L36076_)
                              (map (lambda (_mod36091_)
                                     (gx#stx-identifier
                                      _top35979_
                                      _top35979_
                                      '"/"
                                      _mod36091_))
                                   (_flatten35856_
                                    (map (lambda (_g3609336095_)
                                           (_expand-path35858_
                                            _L36076_
                                            _g3609336095_))
                                         (foldr (lambda (_g3609836101_
                                                         _g3609936104_)
                                                  (cons _g3609836101_
                                                        _g3609936104_))
                                                '()
                                                _L36074_))))))
                           (___kont4256542566_
                            (lambda (_L36013_)
                              (gx#stx-identifier
                               _top35979_
                               _top35979_
                               '"/"
                               _L36013_))))
                       (let* ((_g3598336027_
                               (lambda ()
                                 (let ((_L36013_ ___stx4255842559_))
                                   (if (or (gx#identifier? _L36013_)
                                           (gx#stx-fixnum? _L36013_))
                                       (___kont4256542566_ _L36013_)
                                       (let ()
                                         (declare (not safe))
                                         (_g3598436006_))))))
                              (___match4258142582_
                               (lambda (_e3599036034_
                                        _hd3598936038_
                                        _tl3598836041_
                                        ___splice4256342564_
                                        _target3599136044_
                                        _tl3599336047_)
                                 (letrec ((_loop3599436050_
                                           (lambda (_hd3599236054_
                                                    _mod3599836057_)
                                             (if (gx#stx-pair? _hd3599236054_)
                                                 (let ((_e3599536060_
                                                        (gx#syntax-e
                                                         _hd3599236054_)))
                                                   (let ((_lp-tl3599736067_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e3599536060_)))
                                                         (_lp-hd3599636064_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e3599536060_))))
                                                     (_loop3599436050_
                                                      _lp-tl3599736067_
                                                      (cons _lp-hd3599636064_
                                                            _mod3599836057_))))
                                                 (let ((_mod3599936070_
                                                        (reverse _mod3599836057_)))
                                                   (___kont4256142562_
                                                    _mod3599936070_
                                                    _hd3598936038_))))))
                                   (_loop3599436050_
                                    _target3599136044_
                                    '())))))
                         (if (gx#stx-pair? ___stx4255842559_)
                             (let ((_e3599036034_
                                    (gx#syntax-e ___stx4255842559_)))
                               (let ((_tl3598836041_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3599036034_)))
                                     (_hd3598936038_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3599036034_))))
                                 (if (gx#stx-pair/null? _tl3598836041_)
                                     (let ((___splice4256342564_
                                            (gx#syntax-split-splice
                                             _tl3598836041_
                                             '0)))
                                       (let ((_tl3599336047_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice4256342564_
                                                 '1)))
                                             (_target3599136044_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 ___splice4256342564_
                                                 '0))))
                                         (if (gx#stx-null? _tl3599336047_)
                                             (___match4258142582_
                                              _e3599036034_
                                              _hd3598936038_
                                              _tl3598836041_
                                              ___splice4256342564_
                                              _target3599136044_
                                              _tl3599336047_)
                                             (let ()
                                               (declare (not safe))
                                               (_g3598336027_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g3598336027_)))))
                             (let ()
                               (declare (not safe))
                               (_g3598336027_)))))))))
         (let* ((_g3586035884_
                 (lambda (_g3586135880_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _g3586135880_)))
                (_g3585935975_
                 (lambda (_g3586135888_)
                   (if (gx#stx-pair? _g3586135888_)
                       (let ((_e3586635891_ (gx#syntax-e _g3586135888_)))
                         (let ((_hd3586535895_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3586635891_)))
                               (_tl3586435898_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3586635891_))))
                           (if (gx#stx-pair? _tl3586435898_)
                               (let ((_e3586935901_
                                      (gx#syntax-e _tl3586435898_)))
                                 (let ((_hd3586835905_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3586935901_)))
                                       (_tl3586735908_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3586935901_))))
                                   (if (gx#stx-pair/null? _tl3586735908_)
                                       (let ((_g42978_
                                              (gx#syntax-split-splice
                                               _tl3586735908_
                                               '0)))
                                         (begin
                                           (let ((_g42979_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g42978_)
                                                        (##vector-length
                                                         _g42978_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g42979_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g42979_)))
                                           (let ((_target3587035911_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g42978_ 0)))
                                                 (_tl3587235914_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g42978_
                                                     1))))
                                             (if (gx#stx-null? _tl3587235914_)
                                                 (letrec ((_loop3587335917_
                                                           (lambda (_hd3587135921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _mod3587735924_)
                     (if (gx#stx-pair? _hd3587135921_)
                         (let ((_e3587435927_ (gx#syntax-e _hd3587135921_)))
                           (let ((_lp-hd3587535931_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e3587435927_)))
                                 (_lp-tl3587635934_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e3587435927_))))
                             (_loop3587335917_
                              _lp-tl3587635934_
                              (cons _lp-hd3587535931_ _mod3587735924_))))
                         (let ((_mod3587835937_ (reverse _mod3587735924_)))
                           ((lambda (_L35941_ _L35943_)
                              (cons 'begin:
                                    (_flatten35856_
                                     (map (lambda (_g3596135963_)
                                            (_expand-path35858_
                                             _L35943_
                                             _g3596135963_))
                                          (foldr (lambda (_g3596635969_
                                                          _g3596735972_)
                                                   (cons _g3596635969_
                                                         _g3596735972_))
                                                 '()
                                                 _L35941_)))))
                            _mod3587835937_
                            _hd3586835905_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop3587335917_
                                                    _target3587035911_
                                                    '()))
                                                 (_g3586035884_
                                                  _g3586135888_)))))
                                       (_g3586035884_ _g3586135888_))))
                               (_g3586035884_ _g3586135888_))))
                       (_g3586035884_ _g3586135888_)))))
           (_g3585935975_ _stx35853_))))))
  (define |gerbil/core$<module-sugar>[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx36120_)
       (let* ((_g3612336147_
               (lambda (_g3612436143_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3612436143_)))
              (_g3612236269_
               (lambda (_g3612436151_)
                 (if (gx#stx-pair? _g3612436151_)
                     (let ((_e3612936154_ (gx#syntax-e _g3612436151_)))
                       (let ((_hd3612836158_
                              (let ()
                                (declare (not safe))
                                (##car _e3612936154_)))
                             (_tl3612736161_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3612936154_))))
                         (if (gx#stx-pair? _tl3612736161_)
                             (let ((_e3613236164_
                                    (gx#syntax-e _tl3612736161_)))
                               (let ((_hd3613136168_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3613236164_)))
                                     (_tl3613036171_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3613236164_))))
                                 (if (gx#stx-pair/null? _tl3613036171_)
                                     (let ((_g42980_
                                            (gx#syntax-split-splice
                                             _tl3613036171_
                                             '0)))
                                       (begin
                                         (let ((_g42981_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g42980_)
                                                      (##vector-length
                                                       _g42980_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g42981_ 2)))
                                               (error "Context expects 2 values"
                                                      _g42981_)))
                                         (let ((_target3613336174_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42980_ 0)))
                                               (_tl3613536177_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42980_ 1))))
                                           (if (gx#stx-null? _tl3613536177_)
                                               (letrec ((_loop3613636180_
                                                         (lambda (_hd3613436184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id3614036187_)
                   (if (gx#stx-pair? _hd3613436184_)
                       (let ((_e3613736190_ (gx#syntax-e _hd3613436184_)))
                         (let ((_lp-hd3613836194_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3613736190_)))
                               (_lp-tl3613936197_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3613736190_))))
                           (_loop3613636180_
                            _lp-tl3613936197_
                            (cons _lp-hd3613836194_ _id3614036187_))))
                       (let ((_id3614136200_ (reverse _id3614036187_)))
                         ((lambda (_L36204_ _L36206_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_g3622336226_ _g3622436229_)
                                          (cons _g3622336226_ _g3622436229_))
                                        '()
                                        _L36204_))
                                (let* ((_keys36240_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_g3623136234_
                                                         _g3623236237_)
                                                  (cons _g3623136234_
                                                        _g3623236237_))
                                                '()
                                                _L36204_)))
                                       (_keytab36251_
                                        (let ((_ht36243_ (make-hash-table)))
                                          (for-each
                                           (lambda (_g3624536247_)
                                             (hash-put!
                                              _ht36243_
                                              _g3624536247_
                                              '#t))
                                           _keys36240_)
                                          _ht36243_))
                                       (_exports36254_
                                        (gx#core-expand-export-source
                                         _L36206_))
                                       (_fold-e36264_
                                        (letrec ((_fold-e36257_
                                                  (lambda (_out36260_ _r36262_)
                                                    (if (gx#module-export?
                                                         _out36260_)
                                                        (if (hash-get
                                                             _keytab36251_
                                                             (gx#module-export-name
                                                              _out36260_))
                                                            _r36262_
                                                            (cons _out36260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r36262_))
                (if (gx#export-set? _out36260_)
                    (foldl _fold-e36257_
                           _r36262_
                           (gx#export-set-exports _out36260_))
                    _r36262_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e36257_)))
                                  (cons 'begin:
                                        (foldl _fold-e36264_
                                               '()
                                               _exports36254_)))
                                (_g3612336147_ _g3612436151_)))
                          _id3614136200_
                          _hd3613136168_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3613636180_
                                                  _target3613336174_
                                                  '()))
                                               (_g3612336147_
                                                _g3612436151_)))))
                                     (_g3612336147_ _g3612436151_))))
                             (_g3612336147_ _g3612436151_))))
                     (_g3612336147_ _g3612436151_)))))
         (_g3612236269_ _stx36120_)))))
  (define |gerbil/core$<module-sugar>[1]#module-export-rename|
    (lambda (_out36274_ _rename36276_)
      (gx#make-module-export
       (gx#module-export-context _out36274_)
       (gx#module-export-key _out36274_)
       (gx#module-export-phi _out36274_)
       _rename36276_
       (gx#module-export-weak? _out36274_))))
  (define |gerbil/core$<module-sugar>[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_stx36278_)
       (let* ((_g3628136314_
               (lambda (_g3628236310_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3628236310_)))
              (_g3628036500_
               (lambda (_g3628236318_)
                 (if (gx#stx-pair? _g3628236318_)
                     (let ((_e3628836321_ (gx#syntax-e _g3628236318_)))
                       (let ((_hd3628736325_
                              (let ()
                                (declare (not safe))
                                (##car _e3628836321_)))
                             (_tl3628636328_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3628836321_))))
                         (if (gx#stx-pair? _tl3628636328_)
                             (let ((_e3629136331_
                                    (gx#syntax-e _tl3628636328_)))
                               (let ((_hd3629036335_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3629136331_)))
                                     (_tl3628936338_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3629136331_))))
                                 (if (gx#stx-pair/null? _tl3628936338_)
                                     (let ((_g42982_
                                            (gx#syntax-split-splice
                                             _tl3628936338_
                                             '0)))
                                       (begin
                                         (let ((_g42983_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g42982_)
                                                      (##vector-length
                                                       _g42982_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g42983_ 2)))
                                               (error "Context expects 2 values"
                                                      _g42983_)))
                                         (let ((_target3629236341_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42982_ 0)))
                                               (_tl3629436344_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g42982_ 1))))
                                           (if (gx#stx-null? _tl3629436344_)
                                               (letrec ((_loop3629536347_
                                                         (lambda (_hd3629336351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _new-id3629936354_
                          _id3630036356_)
                   (if (gx#stx-pair? _hd3629336351_)
                       (let ((_e3629636359_ (gx#syntax-e _hd3629336351_)))
                         (let ((_lp-hd3629736363_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3629636359_)))
                               (_lp-tl3629836366_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3629636359_))))
                           (if (gx#stx-pair? _lp-hd3629736363_)
                               (let ((_e3630536369_
                                      (gx#syntax-e _lp-hd3629736363_)))
                                 (let ((_hd3630436373_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3630536369_)))
                                       (_tl3630336376_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3630536369_))))
                                   (if (gx#stx-pair? _tl3630336376_)
                                       (let ((_e3630836379_
                                              (gx#syntax-e _tl3630336376_)))
                                         (let ((_hd3630736383_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3630836379_)))
                                               (_tl3630636386_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3630836379_))))
                                           (if (gx#stx-null? _tl3630636386_)
                                               (_loop3629536347_
                                                _lp-tl3629836366_
                                                (cons _hd3630736383_
                                                      _new-id3629936354_)
                                                (cons _hd3630436373_
                                                      _id3630036356_))
                                               (_g3628136314_ _g3628236318_))))
                                       (_g3628136314_ _g3628236318_))))
                               (_g3628136314_ _g3628236318_))))
                       (let ((_new-id3630136389_ (reverse _new-id3629936354_))
                             (_id3630236392_ (reverse _id3630036356_)))
                         ((lambda (_L36395_ _L36397_ _L36398_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_g3641636419_
                                                      _g3641736422_)
                                               (cons _g3641636419_
                                                     _g3641736422_))
                                             '()
                                             _L36397_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_g3642436427_
                                                      _g3642536430_)
                                               (cons _g3642436427_
                                                     _g3642536430_))
                                             '()
                                             _L36395_)))
                                (let* ((_keytab36433_ (make-hash-table))
                                       (_found36436_ (make-hash-table))
                                       (_g42984_
                                        (for-each
                                         (lambda (_id36439_ _new-id36441_)
                                           (hash-put!
                                            _keytab36433_
                                            (gx#core-identifier-key _id36439_)
                                            (gx#core-identifier-key
                                             _new-id36441_)))
                                         (foldr (lambda (_g3644236445_
                                                         _g3644336448_)
                                                  (cons _g3644236445_
                                                        _g3644336448_))
                                                '()
                                                _L36397_)
                                         (foldr (lambda (_g3645036453_
                                                         _g3645136456_)
                                                  (cons _g3645036453_
                                                        _g3645136456_))
                                                '()
                                                _L36395_)))
                                       (_exports36461_
                                        (gx#core-expand-export-source
                                         _L36398_))
                                       (_fold-e36481_
                                        (letrec ((_fold-e36464_
                                                  (lambda (_out36467_ _r36469_)
                                                    (if (gx#module-export?
                                                         _out36467_)
                                                        (let* ((_name36471_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out36467_))
                       (_$e36474_ (hash-get _keytab36433_ _name36471_)))
                  (if _$e36474_
                      ((lambda (_rename36478_)
                         (hash-put! _found36436_ _name36471_ '#t)
                         (cons (let ()
                                 (declare (not safe))
                                 (|gerbil/core$<module-sugar>[1]#module-export-rename|
                                  _out36467_
                                  _rename36478_))
                               _r36469_))
                       _$e36474_)
                      (cons _out36467_ _r36469_)))
                (if (gx#export-set? _out36467_)
                    (foldl _fold-e36464_
                           _r36469_
                           (gx#export-set-exports _out36467_))
                    (cons _out36467_ _r36469_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _fold-e36464_))
                                       (_new-exports36484_
                                        (foldl _fold-e36481_
                                               '()
                                               _exports36461_)))
                                  (for-each
                                   (lambda (_id36489_)
                                     (if (hash-get
                                          _found36436_
                                          (gx#core-identifier-key _id36489_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; identifier is not in the export set"
                                          _stx36278_
                                          _id36489_)))
                                   (foldr (lambda (_g3649136494_ _g3649236497_)
                                            (cons _g3649136494_ _g3649236497_))
                                          '()
                                          _L36397_))
                                  (cons 'begin: _new-exports36484_))
                                (_g3628136314_ _g3628236318_)))
                          _new-id3630136389_
                          _id3630236392_
                          _hd3629036335_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3629536347_
                                                  _target3629236341_
                                                  '()
                                                  '()))
                                               (_g3628136314_
                                                _g3628236318_)))))
                                     (_g3628136314_ _g3628236318_))))
                             (_g3628136314_ _g3628236318_))))
                     (_g3628136314_ _g3628236318_)))))
         (_g3628036500_ _stx36278_)))))
  (define |gerbil/core$<module-sugar>[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_stx36506_)
       (let* ((_g3650936527_
               (lambda (_g3651036523_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3651036523_)))
              (_g3650836606_
               (lambda (_g3651036531_)
                 (if (gx#stx-pair? _g3651036531_)
                     (let ((_e3651536534_ (gx#syntax-e _g3651036531_)))
                       (let ((_hd3651436538_
                              (let ()
                                (declare (not safe))
                                (##car _e3651536534_)))
                             (_tl3651336541_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3651536534_))))
                         (if (gx#stx-pair? _tl3651336541_)
                             (let ((_e3651836544_
                                    (gx#syntax-e _tl3651336541_)))
                               (let ((_hd3651736548_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3651836544_)))
                                     (_tl3651636551_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3651836544_))))
                                 (if (gx#stx-pair? _tl3651636551_)
                                     (let ((_e3652136554_
                                            (gx#syntax-e _tl3651636551_)))
                                       (let ((_hd3652036558_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3652136554_)))
                                             (_tl3651936561_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3652136554_))))
                                         (if (gx#stx-null? _tl3651936561_)
                                             ((lambda (_L36564_ _L36566_)
                                                (if (gx#identifier? _L36564_)
                                                    (let* ((_pre36582_
                                                            (gx#stx-e
                                                             _L36564_))
                                                           (_exports36585_
                                                            (gx#core-expand-export-source
                                                             _L36566_))
                                                           (_rename-e36591_
                                                            (lambda (_name36588_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core$<module-sugar>[1]#prefix-identifier-key|
                         _name36588_
                         _pre36582_))))
                   (_fold-e36601_
                    (letrec ((_fold-e36594_
                              (lambda (_out36597_ _r36599_)
                                (if (gx#module-export? _out36597_)
                                    (cons (let ((__tmp42985
                                                 (_rename-e36591_
                                                  (gx#module-export-name
                                                   _out36597_))))
                                            (declare (not safe))
                                            (|gerbil/core$<module-sugar>[1]#module-export-rename|
                                             _out36597_
                                             __tmp42985))
                                          _r36599_)
                                    (if (gx#export-set? _out36597_)
                                        (foldl _fold-e36594_
                                               _r36599_
                                               (gx#export-set-exports
                                                _out36597_))
                                        (cons _out36597_ _r36599_))))))
                      _fold-e36594_)))
              (cons 'begin: (foldl _fold-e36601_ '() _exports36585_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3650936527_
                                                     _g3651036531_)))
                                              _hd3652036558_
                                              _hd3651736548_)
                                             (_g3650936527_ _g3651036531_))))
                                     (_g3650936527_ _g3651036531_))))
                             (_g3650936527_ _g3651036531_))))
                     (_g3650936527_ _g3651036531_)))))
         (_g3650836606_ _stx36506_)))))
  (define |gerbil/core$<module-sugar>[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx36610_)
       (let* ((_g3661336633_
               (lambda (_g3661436629_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g3661436629_)))
              (_g3661236868_
               (lambda (_g3661436637_)
                 (if (gx#stx-pair? _g3661436637_)
                     (let ((_e3661836640_ (gx#syntax-e _g3661436637_)))
                       (let ((_hd3661736644_
                              (let ()
                                (declare (not safe))
                                (##car _e3661836640_)))
                             (_tl3661636647_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3661836640_))))
                         (if (gx#stx-pair/null? _tl3661636647_)
                             (let ((_g42986_
                                    (gx#syntax-split-splice
                                     _tl3661636647_
                                     '0)))
                               (begin
                                 (let ((_g42987_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g42986_)
                                              (##vector-length _g42986_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g42987_ 2)))
                                       (error "Context expects 2 values"
                                              _g42987_)))
                                 (let ((_target3661936650_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g42986_ 0)))
                                       (_tl3662136653_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g42986_ 1))))
                                   (if (gx#stx-null? _tl3662136653_)
                                       (letrec ((_loop3662236656_
                                                 (lambda (_hd3662036660_
                                                          _id3662636663_)
                                                   (if (gx#stx-pair?
                                                        _hd3662036660_)
                                                       (let ((_e3662336666_
                                                              (gx#syntax-e
                                                               _hd3662036660_)))
                                                         (let ((_lp-hd3662436670_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3662336666_)))
                       (_lp-tl3662536673_
                        (let () (declare (not safe)) (##cdr _e3662336666_))))
                   (_loop3662236656_
                    _lp-tl3662536673_
                    (cons _lp-hd3662436670_ _id3662636663_))))
               (let ((_id3662736676_ (reverse _id3662636663_)))
                 ((lambda (_L36680_)
                    (let _lp36696_ ((_rest36699_
                                     (foldr (lambda (_g3685936862_
                                                     _g3686036865_)
                                              (cons _g3685936862_
                                                    _g3686036865_))
                                            '()
                                            _L36680_))
                                    (_ids36701_ '()))
                      (let* ((___stx4258442585_ _rest36699_)
                             (_g3670436716_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4258442585_))))
                        (let ((___kont4258742588_
                               (lambda (_L36744_ _L36746_)
                                 (let ((_info36761_
                                        (gx#syntax-local-value
                                         _L36746_
                                         false)))
                                   (if (let ()
                                         (declare (not safe))
                                         (class-instance?
                                          |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
                                          _info36761_))
                                       (let* ((_g3676336780_
                                               (slot-ref
                                                _info36761_
                                                'expander-identifiers))
                                              (_E3676536786_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _g3676336780_)))
                                              (_K3676636798_
                                               (lambda (_setf36790_
                                                        _getf36792_
                                                        _type?36793_
                                                        _make-type36794_
                                                        _type::t36795_
                                                        _super36796_)
                                                 (_lp36696_
                                                  _L36744_
                                                  (cons _L36746_
                                                        (cons _type::t36795_
                                                              (cons _make-type36794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _type?36793_
                                  (foldr cons
                                         (foldr cons _ids36701_ _setf36790_)
                                         _getf36792_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (let ()
                                               (declare (not safe))
                                               (##pair? _g3676336780_))
                                             (let ((_hd3676736802_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _g3676336780_)))
                                                   (_tl3676836805_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _g3676336780_))))
                                               (let ((_super36808_
                                                      _hd3676736802_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##pair? _tl3676836805_))
                                                     (let ((_hd3676936811_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _tl3676836805_)))
                                                           (_tl3677036814_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _tl3676836805_))))
                                                       (let ((_type::t36817_
                                                              _hd3676936811_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##pair? _tl3677036814_))
                     (let ((_hd3677136820_
                            (let ()
                              (declare (not safe))
                              (##car _tl3677036814_)))
                           (_tl3677236823_
                            (let ()
                              (declare (not safe))
                              (##cdr _tl3677036814_))))
                       (let ((_make-type36826_ _hd3677136820_))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _tl3677236823_))
                             (let ((_hd3677336829_
                                    (let ()
                                      (declare (not safe))
                                      (##car _tl3677236823_)))
                                   (_tl3677436832_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl3677236823_))))
                               (let ((_type?36835_ _hd3677336829_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _tl3677436832_))
                                     (let ((_hd3677536838_
                                            (let ()
                                              (declare (not safe))
                                              (##car _tl3677436832_)))
                                           (_tl3677636841_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _tl3677436832_))))
                                       (let ((_getf36844_ _hd3677536838_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##pair? _tl3677636841_))
                                             (let ((_hd3677736847_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _tl3677636841_)))
                                                   (_tl3677836850_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _tl3677636841_))))
                                               (let ((_setf36853_
                                                      _hd3677736847_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##null? _tl3677836850_))
                                                     (_K3676636798_
                                                      _setf36853_
                                                      _getf36844_
                                                      _type?36835_
                                                      _make-type36826_
                                                      _type::t36817_
                                                      _super36808_)
                                                     (_E3676536786_))))
                                             (_E3676536786_))))
                                     (_E3676536786_))))
                             (_E3676536786_))))
                     (_E3676536786_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E3676536786_))))
                                             (_E3676536786_)))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Incomplete type info"
                                        _stx36610_
                                        _L36746_)))))
                              (___kont4258942590_
                               (lambda () (cons 'begin: _ids36701_))))
                          (if (gx#stx-pair? ___stx4258442585_)
                              (let ((_e3671036734_
                                     (gx#syntax-e ___stx4258442585_)))
                                (let ((_tl3670836741_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3671036734_)))
                                      (_hd3670936738_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3671036734_))))
                                  (___kont4258742588_
                                   _tl3670836741_
                                   _hd3670936738_)))
                              (___kont4258942590_))))))
                  _id3662736676_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3662236656_
                                          _target3661936650_
                                          '()))
                                       (_g3661336633_ _g3661436637_)))))
                             (_g3661336633_ _g3661436637_))))
                     (_g3661336633_ _g3661436637_)))))
         (_g3661236868_ _stx36610_))))))
