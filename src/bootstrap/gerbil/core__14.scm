(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx28549_)
      (let* ((_g2855328564_
              (lambda (_g2855428560_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2855428560_)))
             (_g2855228594_
              (lambda (_g2855428568_)
                (if (gx#stx-pair? _g2855428568_)
                    (let ((_e2855628571_ (gx#syntax-e _g2855428568_)))
                      (let ((_hd2855728575_ (##car _e2855628571_))
                            (_tl2855828578_ (##cdr _e2855628571_)))
                        ((lambda (_L28581_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _L28581_)
                                             '()))))
                         _tl2855828578_)))
                    (_g2855328564_ _g2855428568_)))))
        (_g2855228594_ _$stx28549_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx28598_)
      (let ((_g2860128608_
             (lambda (_g2860228604_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2860228604_))))
        (_g2860128608_ _$stx28598_)))))
