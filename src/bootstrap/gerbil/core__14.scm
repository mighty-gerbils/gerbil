(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx28780_)
      (let* ((_g2878428795_
              (lambda (_g2878528791_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2878528791_)))
             (_g2878328825_
              (lambda (_g2878528799_)
                (if (gx#stx-pair? _g2878528799_)
                    (let ((_e2878728802_ (gx#syntax-e _g2878528799_)))
                      (let ((_hd2878828806_ (##car _e2878728802_))
                            (_tl2878928809_ (##cdr _e2878728802_)))
                        ((lambda (_L28812_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _L28812_)
                                             '()))))
                         _tl2878928809_)))
                    (_g2878428795_ _g2878528799_)))))
        (_g2878328825_ _$stx28780_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx28829_)
      (let ((_g2883228839_
             (lambda (_g2883328835_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2883328835_))))
        (_g2883228839_ _$stx28829_)))))
