(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 100))
(define |gxc[:0:]#defbasic-expression-type-builtin|
  (lambda (_$stx17398_)
    (let* ((_g1740217431_
            (lambda (_g1740317427_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g1740317427_)))
           (_g1740117532_
            (lambda (_g1740317435_)
              (if (gx#stx-pair? _g1740317435_)
                  (let ((_e1740617438_ (gx#syntax-e _g1740317435_)))
                    (let ((_hd1740717442_ (##car _e1740617438_))
                          (_tl1740817445_ (##cdr _e1740617438_)))
                      (if (gx#stx-pair/null? _tl1740817445_)
                          (let ((_g28932_
                                 (gx#syntax-split-splice _tl1740817445_ '0)))
                            (begin
                              (let ((_g28933_
                                     (if (##values? _g28932_)
                                         (##vector-length _g28932_)
                                         1)))
                                (if (not (##fx= _g28933_ 2))
                                    (error "Context expects 2 values"
                                           _g28933_)))
                              (let ((_target1740917448_
                                     (##vector-ref _g28932_ 0))
                                    (_tl1741117451_ (##vector-ref _g28932_ 1)))
                                (if (gx#stx-null? _tl1741117451_)
                                    (letrec ((_loop1741217454_
                                              (lambda (_hd1741017458_
                                                       _type-e1741617461_
                                                       _id1741717463_)
                                                (if (gx#stx-pair?
                                                     _hd1741017458_)
                                                    (let ((_e1741317466_
                                                           (gx#syntax-e
                                                            _hd1741017458_)))
                                                      (let ((_lp-hd1741417470_
                                                             (##car _e1741317466_))
                                                            (_lp-tl1741517473_
                                                             (##cdr _e1741317466_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd1741417470_)
                                                            (let ((_e1742017476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _lp-hd1741417470_)))
                      (let ((_hd1742117480_ (##car _e1742017476_))
                            (_tl1742217483_ (##cdr _e1742017476_)))
                        (if (gx#stx-pair? _tl1742217483_)
                            (let ((_e1742317486_ (gx#syntax-e _tl1742217483_)))
                              (let ((_hd1742417490_ (##car _e1742317486_))
                                    (_tl1742517493_ (##cdr _e1742317486_)))
                                (if (gx#stx-null? _tl1742517493_)
                                    (_loop1741217454_
                                     _lp-tl1741517473_
                                     (cons _hd1742417490_ _type-e1741617461_)
                                     (cons _hd1742117480_ _id1741717463_))
                                    (_g1740217431_ _g1740317435_))))
                            (_g1740217431_ _g1740317435_))))
                    (_g1740217431_ _g1740317435_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_type-e1741817496_
                                                           (reverse _type-e1741617461_))
                                                          (_id1741917499_
                                                           (reverse _id1741717463_)))
                                                      ((lambda (_L17502_
                                                                _L17504_)
                                                         (cons (gx#datum->syntax__0
                                                                '#f
                                                                'begin)
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets _L17502_ _L17504_)
                         (foldr2 (lambda (_g1752017524_
                                          _g1752117527_
                                          _g1752217529_)
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
                         (cons _g1752117527_ '()))
                   (cons _g1752017524_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _g1752217529_))
                                 '()
                                 _L17502_
                                 _L17504_))))
               _type-e1741817496_
               _id1741917499_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop1741217454_
                                       _target1740917448_
                                       '()
                                       '()))
                                    (_g1740217431_ _g1740317435_)))))
                          (_g1740217431_ _g1740317435_))))
                  (_g1740217431_ _g1740317435_)))))
      (_g1740117532_ _$stx17398_))))
