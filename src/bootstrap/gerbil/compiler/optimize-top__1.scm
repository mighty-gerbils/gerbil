(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#defbasic-expression-type-builtin|
  (lambda (_$stx18378_)
    (let* ((_g1838218411_
            (lambda (_g1838318407_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g1838318407_)))
           (_g1838118512_
            (lambda (_g1838318415_)
              (if (gx#stx-pair? _g1838318415_)
                  (let ((_e1838618418_ (gx#syntax-e _g1838318415_)))
                    (let ((_hd1838718422_ (##car _e1838618418_))
                          (_tl1838818425_ (##cdr _e1838618418_)))
                      (if (gx#stx-pair/null? _tl1838818425_)
                          (let ((_g30098_
                                 (gx#syntax-split-splice _tl1838818425_ '0)))
                            (begin
                              (let ((_g30099_
                                     (if (##values? _g30098_)
                                         (##vector-length _g30098_)
                                         1)))
                                (if (not (##fx= _g30099_ 2))
                                    (error "Context expects 2 values"
                                           _g30099_)))
                              (let ((_target1838918428_
                                     (##vector-ref _g30098_ 0))
                                    (_tl1839118431_ (##vector-ref _g30098_ 1)))
                                (if (gx#stx-null? _tl1839118431_)
                                    (letrec ((_loop1839218434_
                                              (lambda (_hd1839018438_
                                                       _type-e1839618441_
                                                       _id1839718443_)
                                                (if (gx#stx-pair?
                                                     _hd1839018438_)
                                                    (let ((_e1839318446_
                                                           (gx#syntax-e
                                                            _hd1839018438_)))
                                                      (let ((_lp-hd1839418450_
                                                             (##car _e1839318446_))
                                                            (_lp-tl1839518453_
                                                             (##cdr _e1839318446_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd1839418450_)
                                                            (let ((_e1840018456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _lp-hd1839418450_)))
                      (let ((_hd1840118460_ (##car _e1840018456_))
                            (_tl1840218463_ (##cdr _e1840018456_)))
                        (if (gx#stx-pair? _tl1840218463_)
                            (let ((_e1840318466_ (gx#syntax-e _tl1840218463_)))
                              (let ((_hd1840418470_ (##car _e1840318466_))
                                    (_tl1840518473_ (##cdr _e1840318466_)))
                                (if (gx#stx-null? _tl1840518473_)
                                    (_loop1839218434_
                                     _lp-tl1839518453_
                                     (cons _hd1840418470_ _type-e1839618441_)
                                     (cons _hd1840118460_ _id1839718443_))
                                    (_g1838218411_ _g1838318415_))))
                            (_g1838218411_ _g1838318415_))))
                    (_g1838218411_ _g1838318415_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_type-e1839818476_
                                                           (reverse _type-e1839618441_))
                                                          (_id1839918479_
                                                           (reverse _id1839718443_)))
                                                      ((lambda (_L18482_
                                                                _L18484_)
                                                         (cons (gx#datum->syntax__0
                                                                '#f
                                                                'begin)
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets _L18482_ _L18484_)
                         (foldr2 (lambda (_g1850018504_
                                          _g1850118507_
                                          _g1850218509_)
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
                         (cons _g1850118507_ '()))
                   (cons _g1850018504_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _g1850218509_))
                                 '()
                                 _L18482_
                                 _L18484_))))
               _type-e1839818476_
               _id1839918479_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop1839218434_
                                       _target1838918428_
                                       '()
                                       '()))
                                    (_g1838218411_ _g1838318415_)))))
                          (_g1838218411_ _g1838318415_))))
                  (_g1838218411_ _g1838318415_)))))
      (_g1838118512_ _$stx18378_))))
