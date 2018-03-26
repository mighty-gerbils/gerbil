(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#defbasic-expression-type-builtin|
  (lambda (_$stx16999_)
    (let* ((_g1700317032_
            (lambda (_g1700417028_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g1700417028_)))
           (_g1700217133_
            (lambda (_g1700417036_)
              (if (gx#stx-pair? _g1700417036_)
                  (let ((_e1700717039_ (gx#syntax-e _g1700417036_)))
                    (let ((_hd1700817043_ (##car _e1700717039_))
                          (_tl1700917046_ (##cdr _e1700717039_)))
                      (if (gx#stx-pair/null? _tl1700917046_)
                          (let ((_g28533_
                                 (gx#syntax-split-splice _tl1700917046_ '0)))
                            (begin
                              (let ((_g28534_
                                     (if (##values? _g28533_)
                                         (##vector-length _g28533_)
                                         1)))
                                (if (not (##fx= _g28534_ 2))
                                    (error "Context expects 2 values"
                                           _g28534_)))
                              (let ((_target1701017049_
                                     (##vector-ref _g28533_ 0))
                                    (_tl1701217052_ (##vector-ref _g28533_ 1)))
                                (if (gx#stx-null? _tl1701217052_)
                                    (letrec ((_loop1701317055_
                                              (lambda (_hd1701117059_
                                                       _type-e1701717062_
                                                       _id1701817064_)
                                                (if (gx#stx-pair?
                                                     _hd1701117059_)
                                                    (let ((_e1701417067_
                                                           (gx#syntax-e
                                                            _hd1701117059_)))
                                                      (let ((_lp-hd1701517071_
                                                             (##car _e1701417067_))
                                                            (_lp-tl1701617074_
                                                             (##cdr _e1701417067_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd1701517071_)
                                                            (let ((_e1702117077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _lp-hd1701517071_)))
                      (let ((_hd1702217081_ (##car _e1702117077_))
                            (_tl1702317084_ (##cdr _e1702117077_)))
                        (if (gx#stx-pair? _tl1702317084_)
                            (let ((_e1702417087_ (gx#syntax-e _tl1702317084_)))
                              (let ((_hd1702517091_ (##car _e1702417087_))
                                    (_tl1702617094_ (##cdr _e1702417087_)))
                                (if (gx#stx-null? _tl1702617094_)
                                    (_loop1701317055_
                                     _lp-tl1701617074_
                                     (cons _hd1702517091_ _type-e1701717062_)
                                     (cons _hd1702217081_ _id1701817064_))
                                    (_g1700317032_ _g1700417036_))))
                            (_g1700317032_ _g1700417036_))))
                    (_g1700317032_ _g1700417036_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_type-e1701917097_
                                                           (reverse _type-e1701717062_))
                                                          (_id1702017100_
                                                           (reverse _id1701817064_)))
                                                      ((lambda (_L17103_
                                                                _L17105_)
                                                         (cons (gx#datum->syntax__0
                                                                '#f
                                                                'begin)
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets _L17103_ _L17105_)
                         (foldr2 (lambda (_g1712117125_
                                          _g1712217128_
                                          _g1712317130_)
                                   (cons (cons (gx#datum->syntax__0
                                                '#f
                                                'hash-put!)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'basic-expression-type-builtin)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _g1712217128_ '()))
                   (cons _g1712117125_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _g1712317130_))
                                 '()
                                 _L17103_
                                 _L17105_))))
               _type-e1701917097_
               _id1702017100_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop1701317055_
                                       _target1701017049_
                                       '()
                                       '()))
                                    (_g1700317032_ _g1700417036_)))))
                          (_g1700317032_ _g1700417036_))))
                  (_g1700317032_ _g1700417036_)))))
      (_g1700217133_ _$stx16999_))))
