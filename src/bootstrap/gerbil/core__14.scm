(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx27061_)
      (let ((_g2706527076_
             (lambda (_g2706627072_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2706627072_))))
        (let ((_g2706427106_
               (lambda (_g2706627080_)
                 (if (gx#stx-pair? _g2706627080_)
                     (let ((_e2706827083_ (gx#syntax-e _g2706627080_)))
                       (let ((_hd2706927087_ (##car _e2706827083_))
                             (_tl2707027090_ (##cdr _e2706827083_)))
                         ((lambda (_L27093_)
                            (cons (gx#datum->syntax '#f 'make-setq-macro)
                                  (cons 'macro:
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'syntax-rules)
                                                    _L27093_)
                                              '()))))
                          _tl2707027090_)))
                     (_g2706527076_ _g2706627080_)))))
          (_g2706427106_ _$stx27061_)))))
  (define |gerbil/core::<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx27110_)
      (let ((_g2711327120_
             (lambda (_g2711427116_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2711427116_))))
        (_g2711327120_ _$stx27110_)))))
