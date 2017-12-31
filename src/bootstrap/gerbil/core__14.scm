(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx28604_)
      (let* ((_g2860828619_
              (lambda (_g2860928615_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2860928615_)))
             (_g2860728649_
              (lambda (_g2860928623_)
                (if (gx#stx-pair? _g2860928623_)
                    (let ((_e2861128626_ (gx#syntax-e _g2860928623_)))
                      (let ((_hd2861228630_ (##car _e2861128626_))
                            (_tl2861328633_ (##cdr _e2861128626_)))
                        ((lambda (_L28636_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _L28636_)
                                             '()))))
                         _tl2861328633_)))
                    (_g2860828619_ _g2860928623_)))))
        (_g2860728649_ _$stx28604_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx28653_)
      (let ((_g2865628663_
             (lambda (_g2865728659_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2865728659_))))
        (_g2865628663_ _$stx28653_)))))
