(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx27097_)
      (let ((_g2710127112_
             (lambda (_g2710227108_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2710227108_))))
        (let ((_g2710027142_
               (lambda (_g2710227116_)
                 (if (gx#stx-pair? _g2710227116_)
                     (let ((_e2710427119_ (gx#syntax-e _g2710227116_)))
                       (let ((_hd2710527123_ (##car _e2710427119_))
                             (_tl2710627126_ (##cdr _e2710427119_)))
                         ((lambda (_L27129_)
                            (cons (gx#datum->syntax '#f 'make-setq-macro)
                                  (cons 'macro:
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'syntax-rules)
                                                    _L27129_)
                                              '()))))
                          _tl2710627126_)))
                     (_g2710127112_ _g2710227116_)))))
          (_g2710027142_ _$stx27097_)))))
  (define |gerbil/core::<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx27146_)
      (let ((_g2714927156_
             (lambda (_g2715027152_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2715027152_))))
        (_g2714927156_ _$stx27146_)))))
