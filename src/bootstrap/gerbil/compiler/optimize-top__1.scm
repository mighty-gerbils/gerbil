(declare (block) (standard-bindings) (extended-bindings))
(define |gxc[:0:]#defbasic-expression-type-builtin|
  (lambda (_$stx15573_)
    (let* ((_g1557715606_
            (lambda (_g1557815602_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g1557815602_)))
           (_g1557615707_
            (lambda (_g1557815610_)
              (if (gx#stx-pair? _g1557815610_)
                  (let ((_e1558115613_ (gx#syntax-e _g1557815610_)))
                    (let ((_hd1558215617_ (##car _e1558115613_))
                          (_tl1558315620_ (##cdr _e1558115613_)))
                      (if (gx#stx-pair/null? _tl1558315620_)
                          (if (fx>= (gx#stx-length _tl1558315620_) '0)
                              (let ((_g24554_
                                     (gx#syntax-split-splice
                                      _tl1558315620_
                                      '0)))
                                (begin
                                  (let ((_g24555_
                                         (if (##values? _g24554_)
                                             (##vector-length _g24554_)
                                             1)))
                                    (if (not (##fx= _g24555_ 2))
                                        (error "Context expects 2 values"
                                               _g24555_)))
                                  (let ((_target1558415623_
                                         (##vector-ref _g24554_ 0))
                                        (_tl1558615626_
                                         (##vector-ref _g24554_ 1)))
                                    (if (gx#stx-null? _tl1558615626_)
                                        (letrec ((_loop1558715629_
                                                  (lambda (_hd1558515633_
                                                           _type-e1559115636_
                                                           _id1559215638_)
                                                    (if (gx#stx-pair?
                                                         _hd1558515633_)
                                                        (let ((_e1558815641_
                                                               (gx#syntax-e
                                                                _hd1558515633_)))
                                                          (let ((_lp-hd1558915645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1558815641_))
                        (_lp-tl1559015648_ (##cdr _e1558815641_)))
                    (if (gx#stx-pair? _lp-hd1558915645_)
                        (let ((_e1559515651_ (gx#syntax-e _lp-hd1558915645_)))
                          (let ((_hd1559615655_ (##car _e1559515651_))
                                (_tl1559715658_ (##cdr _e1559515651_)))
                            (if (gx#stx-pair? _tl1559715658_)
                                (let ((_e1559815661_
                                       (gx#syntax-e _tl1559715658_)))
                                  (let ((_hd1559915665_ (##car _e1559815661_))
                                        (_tl1560015668_ (##cdr _e1559815661_)))
                                    (if (gx#stx-null? _tl1560015668_)
                                        (_loop1558715629_
                                         _lp-tl1559015648_
                                         (cons _hd1559915665_
                                               _type-e1559115636_)
                                         (cons _hd1559615655_ _id1559215638_))
                                        (_g1557715606_ _g1557815610_))))
                                (_g1557715606_ _g1557815610_))))
                        (_g1557715606_ _g1557815610_))))
                (let ((_type-e1559315671_ (reverse _type-e1559115636_))
                      (_id1559415674_ (reverse _id1559215638_)))
                  ((lambda (_L15677_ _L15679_)
                     (cons (gx#datum->syntax '#f 'begin)
                           (begin
                             (gx#syntax-check-splice-targets _L15677_ _L15679_)
                             (foldr (lambda (_g1569515699_
                                             _g1569615702_
                                             _g1569715704_)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'hash-put!)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'basic-expression-type-builtin)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _g1569615702_ '()))
                      (cons _g1569515699_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1569715704_))
                                    '()
                                    _L15677_
                                    _L15679_))))
                   _type-e1559315671_
                   _id1559415674_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1558715629_
                                           _target1558415623_
                                           '()
                                           '()))
                                        (_g1557715606_ _g1557815610_)))))
                              (_g1557715606_ _g1557815610_))
                          (_g1557715606_ _g1557815610_))))
                  (_g1557715606_ _g1557815610_)))))
      (_g1557615707_ _$stx15573_))))
