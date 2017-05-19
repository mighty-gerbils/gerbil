(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx27252_)
      (let ((_g2725627267_
             (lambda (_g2725727263_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2725727263_))))
        (let ((_g2725527297_
               (lambda (_g2725727271_)
                 (if (gx#stx-pair? _g2725727271_)
                     (let ((_e2725927274_ (gx#syntax-e _g2725727271_)))
                       (let ((_hd2726027278_ (##car _e2725927274_))
                             (_tl2726127281_ (##cdr _e2725927274_)))
                         ((lambda (_L27284_)
                            (cons (gx#datum->syntax '#f 'make-setq-macro)
                                  (cons 'macro:
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'syntax-rules)
                                                    _L27284_)
                                              '()))))
                          _tl2726127281_)))
                     (_g2725627267_ _g2725727271_)))))
          (_g2725527297_ _$stx27252_)))))
  (define |gerbil/core::<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx27301_)
      (let ((_g2730427311_
             (lambda (_g2730527307_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2730527307_))))
        (_g2730427311_ _$stx27301_)))))
