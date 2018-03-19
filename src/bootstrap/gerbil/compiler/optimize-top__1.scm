(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 100))
(define |gxc[:0:]#defbasic-expression-type-builtin|
  (lambda (_$stx16982_)
    (let* ((_g1698617015_
            (lambda (_g1698717011_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g1698717011_)))
           (_g1698517116_
            (lambda (_g1698717019_)
              (if (gx#stx-pair? _g1698717019_)
                  (let ((_e1699017022_ (gx#syntax-e _g1698717019_)))
                    (let ((_hd1699117026_ (##car _e1699017022_))
                          (_tl1699217029_ (##cdr _e1699017022_)))
                      (if (gx#stx-pair/null? _tl1699217029_)
                          (let ((_g28516_
                                 (gx#syntax-split-splice _tl1699217029_ '0)))
                            (begin
                              (let ((_g28517_
                                     (if (##values? _g28516_)
                                         (##vector-length _g28516_)
                                         1)))
                                (if (not (##fx= _g28517_ 2))
                                    (error "Context expects 2 values"
                                           _g28517_)))
                              (let ((_target1699317032_
                                     (##vector-ref _g28516_ 0))
                                    (_tl1699517035_ (##vector-ref _g28516_ 1)))
                                (if (gx#stx-null? _tl1699517035_)
                                    (letrec ((_loop1699617038_
                                              (lambda (_hd1699417042_
                                                       _type-e1700017045_
                                                       _id1700117047_)
                                                (if (gx#stx-pair?
                                                     _hd1699417042_)
                                                    (let ((_e1699717050_
                                                           (gx#syntax-e
                                                            _hd1699417042_)))
                                                      (let ((_lp-hd1699817054_
                                                             (##car _e1699717050_))
                                                            (_lp-tl1699917057_
                                                             (##cdr _e1699717050_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd1699817054_)
                                                            (let ((_e1700417060_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _lp-hd1699817054_)))
                      (let ((_hd1700517064_ (##car _e1700417060_))
                            (_tl1700617067_ (##cdr _e1700417060_)))
                        (if (gx#stx-pair? _tl1700617067_)
                            (let ((_e1700717070_ (gx#syntax-e _tl1700617067_)))
                              (let ((_hd1700817074_ (##car _e1700717070_))
                                    (_tl1700917077_ (##cdr _e1700717070_)))
                                (if (gx#stx-null? _tl1700917077_)
                                    (_loop1699617038_
                                     _lp-tl1699917057_
                                     (cons _hd1700817074_ _type-e1700017045_)
                                     (cons _hd1700517064_ _id1700117047_))
                                    (_g1698617015_ _g1698717019_))))
                            (_g1698617015_ _g1698717019_))))
                    (_g1698617015_ _g1698717019_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_type-e1700217080_
                                                           (reverse _type-e1700017045_))
                                                          (_id1700317083_
                                                           (reverse _id1700117047_)))
                                                      ((lambda (_L17086_
                                                                _L17088_)
                                                         (cons (gx#datum->syntax__0
                                                                '#f
                                                                'begin)
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets _L17086_ _L17088_)
                         (foldr2 (lambda (_g1710417108_
                                          _g1710517111_
                                          _g1710617113_)
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
                         (cons _g1710517111_ '()))
                   (cons _g1710417108_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _g1710617113_))
                                 '()
                                 _L17086_
                                 _L17088_))))
               _type-e1700217080_
               _id1700317083_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop1699617038_
                                       _target1699317032_
                                       '()
                                       '()))
                                    (_g1698617015_ _g1698717019_)))))
                          (_g1698617015_ _g1698717019_))))
                  (_g1698617015_ _g1698717019_)))))
      (_g1698517116_ _$stx16982_))))
