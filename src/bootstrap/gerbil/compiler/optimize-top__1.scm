(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#defbasic-expression-type-builtin|
  (lambda (_$stx17015_)
    (let* ((_g1701917048_
            (lambda (_g1702017044_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g1702017044_)))
           (_g1701817149_
            (lambda (_g1702017052_)
              (if (gx#stx-pair? _g1702017052_)
                  (let ((_e1702317055_ (gx#syntax-e _g1702017052_)))
                    (let ((_hd1702417059_ (##car _e1702317055_))
                          (_tl1702517062_ (##cdr _e1702317055_)))
                      (if (gx#stx-pair/null? _tl1702517062_)
                          (let ((_g28735_
                                 (gx#syntax-split-splice _tl1702517062_ '0)))
                            (begin
                              (let ((_g28736_
                                     (if (##values? _g28735_)
                                         (##vector-length _g28735_)
                                         1)))
                                (if (not (##fx= _g28736_ 2))
                                    (error "Context expects 2 values"
                                           _g28736_)))
                              (let ((_target1702617065_
                                     (##vector-ref _g28735_ 0))
                                    (_tl1702817068_ (##vector-ref _g28735_ 1)))
                                (if (gx#stx-null? _tl1702817068_)
                                    (letrec ((_loop1702917071_
                                              (lambda (_hd1702717075_
                                                       _type-e1703317078_
                                                       _id1703417080_)
                                                (if (gx#stx-pair?
                                                     _hd1702717075_)
                                                    (let ((_e1703017083_
                                                           (gx#syntax-e
                                                            _hd1702717075_)))
                                                      (let ((_lp-hd1703117087_
                                                             (##car _e1703017083_))
                                                            (_lp-tl1703217090_
                                                             (##cdr _e1703017083_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd1703117087_)
                                                            (let ((_e1703717093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _lp-hd1703117087_)))
                      (let ((_hd1703817097_ (##car _e1703717093_))
                            (_tl1703917100_ (##cdr _e1703717093_)))
                        (if (gx#stx-pair? _tl1703917100_)
                            (let ((_e1704017103_ (gx#syntax-e _tl1703917100_)))
                              (let ((_hd1704117107_ (##car _e1704017103_))
                                    (_tl1704217110_ (##cdr _e1704017103_)))
                                (if (gx#stx-null? _tl1704217110_)
                                    (_loop1702917071_
                                     _lp-tl1703217090_
                                     (cons _hd1704117107_ _type-e1703317078_)
                                     (cons _hd1703817097_ _id1703417080_))
                                    (_g1701917048_ _g1702017052_))))
                            (_g1701917048_ _g1702017052_))))
                    (_g1701917048_ _g1702017052_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_type-e1703517113_
                                                           (reverse _type-e1703317078_))
                                                          (_id1703617116_
                                                           (reverse _id1703417080_)))
                                                      ((lambda (_L17119_
                                                                _L17121_)
                                                         (cons (gx#datum->syntax__0
                                                                '#f
                                                                'begin)
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets _L17119_ _L17121_)
                         (foldr2 (lambda (_g1713717141_
                                          _g1713817144_
                                          _g1713917146_)
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
                         (cons _g1713817144_ '()))
                   (cons _g1713717141_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _g1713917146_))
                                 '()
                                 _L17119_
                                 _L17121_))))
               _type-e1703517113_
               _id1703617116_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop1702917071_
                                       _target1702617065_
                                       '()
                                       '()))
                                    (_g1701917048_ _g1702017052_)))))
                          (_g1701917048_ _g1702017052_))))
                  (_g1701917048_ _g1702017052_)))))
      (_g1701817149_ _$stx17015_))))
