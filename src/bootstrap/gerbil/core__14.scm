(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx27809_)
      (let ((_g2781327824_
             (lambda (_g2781427820_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2781427820_))))
        (let ((_g2781227854_
               (lambda (_g2781427828_)
                 (if (gx#stx-pair? _g2781427828_)
                     (let ((_e2781627831_ (gx#syntax-e _g2781427828_)))
                       (let ((_hd2781727835_ (##car _e2781627831_))
                             (_tl2781827838_ (##cdr _e2781627831_)))
                         ((lambda (_L27841_)
                            (cons (gx#datum->syntax '#f 'make-setq-macro)
                                  (cons 'macro:
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'syntax-rules)
                                                    _L27841_)
                                              '()))))
                          _tl2781827838_)))
                     (_g2781327824_ _g2781427828_)))))
          (_g2781227854_ _$stx27809_)))))
  (define |gerbil/core::<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx27858_)
      (let ((_g2786127868_
             (lambda (_g2786227864_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2786227864_))))
        (_g2786127868_ _$stx27858_)))))
