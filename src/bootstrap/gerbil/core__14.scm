(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx27573_)
      (let ((_g2757727588_
             (lambda (_g2757827584_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2757827584_))))
        (let ((_g2757627618_
               (lambda (_g2757827592_)
                 (if (gx#stx-pair? _g2757827592_)
                     (let ((_e2758027595_ (gx#syntax-e _g2757827592_)))
                       (let ((_hd2758127599_ (##car _e2758027595_))
                             (_tl2758227602_ (##cdr _e2758027595_)))
                         ((lambda (_L27605_)
                            (cons (gx#datum->syntax '#f 'make-setq-macro)
                                  (cons 'macro:
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'syntax-rules)
                                                    _L27605_)
                                              '()))))
                          _tl2758227602_)))
                     (_g2757727588_ _g2757827592_)))))
          (_g2757627618_ _$stx27573_)))))
  (define |gerbil/core::<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx27622_)
      (let ((_g2762527632_
             (lambda (_g2762627628_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2762627628_))))
        (_g2762527632_ _$stx27622_)))))
