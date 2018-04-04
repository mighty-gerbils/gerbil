(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#defbasic-expression-type-builtin|
  (lambda (_$stx18374_)
    (let* ((_g1837818407_
            (lambda (_g1837918403_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g1837918403_)))
           (_g1837718508_
            (lambda (_g1837918411_)
              (if (gx#stx-pair? _g1837918411_)
                  (let ((_e1838218414_ (gx#syntax-e _g1837918411_)))
                    (let ((_hd1838318418_ (##car _e1838218414_))
                          (_tl1838418421_ (##cdr _e1838218414_)))
                      (if (gx#stx-pair/null? _tl1838418421_)
                          (let ((_g30094_
                                 (gx#syntax-split-splice _tl1838418421_ '0)))
                            (begin
                              (let ((_g30095_
                                     (if (##values? _g30094_)
                                         (##vector-length _g30094_)
                                         1)))
                                (if (not (##fx= _g30095_ 2))
                                    (error "Context expects 2 values"
                                           _g30095_)))
                              (let ((_target1838518424_
                                     (##vector-ref _g30094_ 0))
                                    (_tl1838718427_ (##vector-ref _g30094_ 1)))
                                (if (gx#stx-null? _tl1838718427_)
                                    (letrec ((_loop1838818430_
                                              (lambda (_hd1838618434_
                                                       _type-e1839218437_
                                                       _id1839318439_)
                                                (if (gx#stx-pair?
                                                     _hd1838618434_)
                                                    (let ((_e1838918442_
                                                           (gx#syntax-e
                                                            _hd1838618434_)))
                                                      (let ((_lp-hd1839018446_
                                                             (##car _e1838918442_))
                                                            (_lp-tl1839118449_
                                                             (##cdr _e1838918442_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd1839018446_)
                                                            (let ((_e1839618452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _lp-hd1839018446_)))
                      (let ((_hd1839718456_ (##car _e1839618452_))
                            (_tl1839818459_ (##cdr _e1839618452_)))
                        (if (gx#stx-pair? _tl1839818459_)
                            (let ((_e1839918462_ (gx#syntax-e _tl1839818459_)))
                              (let ((_hd1840018466_ (##car _e1839918462_))
                                    (_tl1840118469_ (##cdr _e1839918462_)))
                                (if (gx#stx-null? _tl1840118469_)
                                    (_loop1838818430_
                                     _lp-tl1839118449_
                                     (cons _hd1840018466_ _type-e1839218437_)
                                     (cons _hd1839718456_ _id1839318439_))
                                    (_g1837818407_ _g1837918411_))))
                            (_g1837818407_ _g1837918411_))))
                    (_g1837818407_ _g1837918411_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_type-e1839418472_
                                                           (reverse _type-e1839218437_))
                                                          (_id1839518475_
                                                           (reverse _id1839318439_)))
                                                      ((lambda (_L18478_
                                                                _L18480_)
                                                         (cons (gx#datum->syntax__0
                                                                '#f
                                                                'begin)
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets _L18478_ _L18480_)
                         (foldr2 (lambda (_g1849618500_
                                          _g1849718503_
                                          _g1849818505_)
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
                         (cons _g1849718503_ '()))
                   (cons _g1849618500_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _g1849818505_))
                                 '()
                                 _L18478_
                                 _L18480_))))
               _type-e1839418472_
               _id1839518475_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop1838818430_
                                       _target1838518424_
                                       '()
                                       '()))
                                    (_g1837818407_ _g1837918411_)))))
                          (_g1837818407_ _g1837918411_))))
                  (_g1837818407_ _g1837918411_)))))
      (_g1837718508_ _$stx18374_))))
