(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#defbasic-expression-type-builtin|
  (lambda (_$stx18230_)
    (let* ((_g1823418263_
            (lambda (_g1823518259_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g1823518259_)))
           (_g1823318364_
            (lambda (_g1823518267_)
              (if (gx#stx-pair? _g1823518267_)
                  (let ((_e1823818270_ (gx#syntax-e _g1823518267_)))
                    (let ((_hd1823918274_ (##car _e1823818270_))
                          (_tl1824018277_ (##cdr _e1823818270_)))
                      (if (gx#stx-pair/null? _tl1824018277_)
                          (let ((_g29950_
                                 (gx#syntax-split-splice _tl1824018277_ '0)))
                            (begin
                              (let ((_g29951_
                                     (if (##values? _g29950_)
                                         (##vector-length _g29950_)
                                         1)))
                                (if (not (##fx= _g29951_ 2))
                                    (error "Context expects 2 values"
                                           _g29951_)))
                              (let ((_target1824118280_
                                     (##vector-ref _g29950_ 0))
                                    (_tl1824318283_ (##vector-ref _g29950_ 1)))
                                (if (gx#stx-null? _tl1824318283_)
                                    (letrec ((_loop1824418286_
                                              (lambda (_hd1824218290_
                                                       _type-e1824818293_
                                                       _id1824918295_)
                                                (if (gx#stx-pair?
                                                     _hd1824218290_)
                                                    (let ((_e1824518298_
                                                           (gx#syntax-e
                                                            _hd1824218290_)))
                                                      (let ((_lp-hd1824618302_
                                                             (##car _e1824518298_))
                                                            (_lp-tl1824718305_
                                                             (##cdr _e1824518298_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd1824618302_)
                                                            (let ((_e1825218308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _lp-hd1824618302_)))
                      (let ((_hd1825318312_ (##car _e1825218308_))
                            (_tl1825418315_ (##cdr _e1825218308_)))
                        (if (gx#stx-pair? _tl1825418315_)
                            (let ((_e1825518318_ (gx#syntax-e _tl1825418315_)))
                              (let ((_hd1825618322_ (##car _e1825518318_))
                                    (_tl1825718325_ (##cdr _e1825518318_)))
                                (if (gx#stx-null? _tl1825718325_)
                                    (_loop1824418286_
                                     _lp-tl1824718305_
                                     (cons _hd1825618322_ _type-e1824818293_)
                                     (cons _hd1825318312_ _id1824918295_))
                                    (_g1823418263_ _g1823518267_))))
                            (_g1823418263_ _g1823518267_))))
                    (_g1823418263_ _g1823518267_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_type-e1825018328_
                                                           (reverse _type-e1824818293_))
                                                          (_id1825118331_
                                                           (reverse _id1824918295_)))
                                                      ((lambda (_L18334_
                                                                _L18336_)
                                                         (cons (gx#datum->syntax__0
                                                                '#f
                                                                'begin)
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets _L18334_ _L18336_)
                         (foldr2 (lambda (_g1835218356_
                                          _g1835318359_
                                          _g1835418361_)
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
                         (cons _g1835318359_ '()))
                   (cons _g1835218356_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _g1835418361_))
                                 '()
                                 _L18334_
                                 _L18336_))))
               _type-e1825018328_
               _id1825118331_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop1824418286_
                                       _target1824118280_
                                       '()
                                       '()))
                                    (_g1823418263_ _g1823518267_)))))
                          (_g1823418263_ _g1823518267_))))
                  (_g1823418263_ _g1823518267_)))))
      (_g1823318364_ _$stx18230_))))
