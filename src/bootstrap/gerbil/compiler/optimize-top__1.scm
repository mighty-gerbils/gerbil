(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#defbasic-expression-type-builtin|
  (lambda (_$stx17027_)
    (let* ((_g1703117060_
            (lambda (_g1703217056_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g1703217056_)))
           (_g1703017161_
            (lambda (_g1703217064_)
              (if (gx#stx-pair? _g1703217064_)
                  (let ((_e1703517067_ (gx#syntax-e _g1703217064_)))
                    (let ((_hd1703617071_ (##car _e1703517067_))
                          (_tl1703717074_ (##cdr _e1703517067_)))
                      (if (gx#stx-pair/null? _tl1703717074_)
                          (let ((_g28561_
                                 (gx#syntax-split-splice _tl1703717074_ '0)))
                            (begin
                              (let ((_g28562_
                                     (if (##values? _g28561_)
                                         (##vector-length _g28561_)
                                         1)))
                                (if (not (##fx= _g28562_ 2))
                                    (error "Context expects 2 values"
                                           _g28562_)))
                              (let ((_target1703817077_
                                     (##vector-ref _g28561_ 0))
                                    (_tl1704017080_ (##vector-ref _g28561_ 1)))
                                (if (gx#stx-null? _tl1704017080_)
                                    (letrec ((_loop1704117083_
                                              (lambda (_hd1703917087_
                                                       _type-e1704517090_
                                                       _id1704617092_)
                                                (if (gx#stx-pair?
                                                     _hd1703917087_)
                                                    (let ((_e1704217095_
                                                           (gx#syntax-e
                                                            _hd1703917087_)))
                                                      (let ((_lp-hd1704317099_
                                                             (##car _e1704217095_))
                                                            (_lp-tl1704417102_
                                                             (##cdr _e1704217095_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd1704317099_)
                                                            (let ((_e1704917105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _lp-hd1704317099_)))
                      (let ((_hd1705017109_ (##car _e1704917105_))
                            (_tl1705117112_ (##cdr _e1704917105_)))
                        (if (gx#stx-pair? _tl1705117112_)
                            (let ((_e1705217115_ (gx#syntax-e _tl1705117112_)))
                              (let ((_hd1705317119_ (##car _e1705217115_))
                                    (_tl1705417122_ (##cdr _e1705217115_)))
                                (if (gx#stx-null? _tl1705417122_)
                                    (_loop1704117083_
                                     _lp-tl1704417102_
                                     (cons _hd1705317119_ _type-e1704517090_)
                                     (cons _hd1705017109_ _id1704617092_))
                                    (_g1703117060_ _g1703217064_))))
                            (_g1703117060_ _g1703217064_))))
                    (_g1703117060_ _g1703217064_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_type-e1704717125_
                                                           (reverse _type-e1704517090_))
                                                          (_id1704817128_
                                                           (reverse _id1704617092_)))
                                                      ((lambda (_L17131_
                                                                _L17133_)
                                                         (cons (gx#datum->syntax__0
                                                                '#f
                                                                'begin)
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets _L17131_ _L17133_)
                         (foldr2 (lambda (_g1714917153_
                                          _g1715017156_
                                          _g1715117158_)
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
                         (cons _g1715017156_ '()))
                   (cons _g1714917153_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _g1715117158_))
                                 '()
                                 _L17131_
                                 _L17133_))))
               _type-e1704717125_
               _id1704817128_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop1704117083_
                                       _target1703817077_
                                       '()
                                       '()))
                                    (_g1703117060_ _g1703217064_)))))
                          (_g1703117060_ _g1703217064_))))
                  (_g1703117060_ _g1703217064_)))))
      (_g1703017161_ _$stx17027_))))
