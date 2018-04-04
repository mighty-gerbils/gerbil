(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#defbasic-expression-type-builtin|
  (lambda (_$stx18376_)
    (let* ((_g1838018409_
            (lambda (_g1838118405_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g1838118405_)))
           (_g1837918510_
            (lambda (_g1838118413_)
              (if (gx#stx-pair? _g1838118413_)
                  (let ((_e1838418416_ (gx#syntax-e _g1838118413_)))
                    (let ((_hd1838518420_ (##car _e1838418416_))
                          (_tl1838618423_ (##cdr _e1838418416_)))
                      (if (gx#stx-pair/null? _tl1838618423_)
                          (let ((_g30096_
                                 (gx#syntax-split-splice _tl1838618423_ '0)))
                            (begin
                              (let ((_g30097_
                                     (if (##values? _g30096_)
                                         (##vector-length _g30096_)
                                         1)))
                                (if (not (##fx= _g30097_ 2))
                                    (error "Context expects 2 values"
                                           _g30097_)))
                              (let ((_target1838718426_
                                     (##vector-ref _g30096_ 0))
                                    (_tl1838918429_ (##vector-ref _g30096_ 1)))
                                (if (gx#stx-null? _tl1838918429_)
                                    (letrec ((_loop1839018432_
                                              (lambda (_hd1838818436_
                                                       _type-e1839418439_
                                                       _id1839518441_)
                                                (if (gx#stx-pair?
                                                     _hd1838818436_)
                                                    (let ((_e1839118444_
                                                           (gx#syntax-e
                                                            _hd1838818436_)))
                                                      (let ((_lp-hd1839218448_
                                                             (##car _e1839118444_))
                                                            (_lp-tl1839318451_
                                                             (##cdr _e1839118444_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd1839218448_)
                                                            (let ((_e1839818454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _lp-hd1839218448_)))
                      (let ((_hd1839918458_ (##car _e1839818454_))
                            (_tl1840018461_ (##cdr _e1839818454_)))
                        (if (gx#stx-pair? _tl1840018461_)
                            (let ((_e1840118464_ (gx#syntax-e _tl1840018461_)))
                              (let ((_hd1840218468_ (##car _e1840118464_))
                                    (_tl1840318471_ (##cdr _e1840118464_)))
                                (if (gx#stx-null? _tl1840318471_)
                                    (_loop1839018432_
                                     _lp-tl1839318451_
                                     (cons _hd1840218468_ _type-e1839418439_)
                                     (cons _hd1839918458_ _id1839518441_))
                                    (_g1838018409_ _g1838118413_))))
                            (_g1838018409_ _g1838118413_))))
                    (_g1838018409_ _g1838118413_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_type-e1839618474_
                                                           (reverse _type-e1839418439_))
                                                          (_id1839718477_
                                                           (reverse _id1839518441_)))
                                                      ((lambda (_L18480_
                                                                _L18482_)
                                                         (cons (gx#datum->syntax__0
                                                                '#f
                                                                'begin)
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets _L18480_ _L18482_)
                         (foldr2 (lambda (_g1849818502_
                                          _g1849918505_
                                          _g1850018507_)
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
                         (cons _g1849918505_ '()))
                   (cons _g1849818502_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _g1850018507_))
                                 '()
                                 _L18480_
                                 _L18482_))))
               _type-e1839618474_
               _id1839718477_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop1839018432_
                                       _target1838718426_
                                       '()
                                       '()))
                                    (_g1838018409_ _g1838118413_)))))
                          (_g1838018409_ _g1838118413_))))
                  (_g1838018409_ _g1838118413_)))))
      (_g1837918510_ _$stx18376_))))
