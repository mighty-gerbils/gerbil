(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#defbasic-expression-type-builtin|
  (lambda (_$stx19119_)
    (let* ((_g1912319152_
            (lambda (_g1912419148_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g1912419148_)))
           (_g1912219253_
            (lambda (_g1912419156_)
              (if (gx#stx-pair? _g1912419156_)
                  (let ((_e1912719159_ (gx#syntax-e _g1912419156_)))
                    (let ((_hd1912819163_ (##car _e1912719159_))
                          (_tl1912919166_ (##cdr _e1912719159_)))
                      (if (gx#stx-pair/null? _tl1912919166_)
                          (let ((_g30839_
                                 (gx#syntax-split-splice _tl1912919166_ '0)))
                            (begin
                              (let ((_g30840_
                                     (if (##values? _g30839_)
                                         (##vector-length _g30839_)
                                         1)))
                                (if (not (##fx= _g30840_ 2))
                                    (error "Context expects 2 values"
                                           _g30840_)))
                              (let ((_target1913019169_
                                     (##vector-ref _g30839_ 0))
                                    (_tl1913219172_ (##vector-ref _g30839_ 1)))
                                (if (gx#stx-null? _tl1913219172_)
                                    (letrec ((_loop1913319175_
                                              (lambda (_hd1913119179_
                                                       _type-e1913719182_
                                                       _id1913819184_)
                                                (if (gx#stx-pair?
                                                     _hd1913119179_)
                                                    (let ((_e1913419187_
                                                           (gx#syntax-e
                                                            _hd1913119179_)))
                                                      (let ((_lp-hd1913519191_
                                                             (##car _e1913419187_))
                                                            (_lp-tl1913619194_
                                                             (##cdr _e1913419187_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd1913519191_)
                                                            (let ((_e1914119197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _lp-hd1913519191_)))
                      (let ((_hd1914219201_ (##car _e1914119197_))
                            (_tl1914319204_ (##cdr _e1914119197_)))
                        (if (gx#stx-pair? _tl1914319204_)
                            (let ((_e1914419207_ (gx#syntax-e _tl1914319204_)))
                              (let ((_hd1914519211_ (##car _e1914419207_))
                                    (_tl1914619214_ (##cdr _e1914419207_)))
                                (if (gx#stx-null? _tl1914619214_)
                                    (_loop1913319175_
                                     _lp-tl1913619194_
                                     (cons _hd1914519211_ _type-e1913719182_)
                                     (cons _hd1914219201_ _id1913819184_))
                                    (_g1912319152_ _g1912419156_))))
                            (_g1912319152_ _g1912419156_))))
                    (_g1912319152_ _g1912419156_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_type-e1913919217_
                                                           (reverse _type-e1913719182_))
                                                          (_id1914019220_
                                                           (reverse _id1913819184_)))
                                                      ((lambda (_L19223_
                                                                _L19225_)
                                                         (cons (gx#datum->syntax__0
                                                                '#f
                                                                'begin)
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets _L19223_ _L19225_)
                         (foldr2 (lambda (_g1924119245_
                                          _g1924219248_
                                          _g1924319250_)
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
                         (cons _g1924219248_ '()))
                   (cons _g1924119245_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _g1924319250_))
                                 '()
                                 _L19223_
                                 _L19225_))))
               _type-e1913919217_
               _id1914019220_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop1913319175_
                                       _target1913019169_
                                       '()
                                       '()))
                                    (_g1912319152_ _g1912419156_)))))
                          (_g1912319152_ _g1912419156_))))
                  (_g1912319152_ _g1912419156_)))))
      (_g1912219253_ _$stx19119_))))
