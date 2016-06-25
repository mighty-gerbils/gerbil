(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx27094_)
      (let ((_g2709827109_
             (lambda (_g2709927105_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2709927105_))))
        (let ((_g2709727139_
               (lambda (_g2709927113_)
                 (if (gx#stx-pair? _g2709927113_)
                     (let ((_e2710127116_ (gx#syntax-e _g2709927113_)))
                       (let ((_hd2710227120_ (##car _e2710127116_))
                             (_tl2710327123_ (##cdr _e2710127116_)))
                         ((lambda (_L27126_)
                            (cons (gx#datum->syntax '#f 'make-setq-macro)
                                  (cons 'macro:
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'syntax-rules)
                                                    _L27126_)
                                              '()))))
                          _tl2710327123_)))
                     (_g2709827109_ _g2709927113_)))))
          (_g2709727139_ _$stx27094_)))))
  (define |gerbil/core::<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx27143_)
      (let ((_g2714627153_
             (lambda (_g2714727149_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2714727149_))))
        (_g2714627153_ _$stx27143_)))))
