(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx27343_)
      (let ((_g2734727358_
             (lambda (_g2734827354_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2734827354_))))
        (let ((_g2734627388_
               (lambda (_g2734827362_)
                 (if (gx#stx-pair? _g2734827362_)
                     (let ((_e2735027365_ (gx#syntax-e _g2734827362_)))
                       (let ((_hd2735127369_ (##car _e2735027365_))
                             (_tl2735227372_ (##cdr _e2735027365_)))
                         ((lambda (_L27375_)
                            (cons (gx#datum->syntax '#f 'make-setq-macro)
                                  (cons 'macro:
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'syntax-rules)
                                                    _L27375_)
                                              '()))))
                          _tl2735227372_)))
                     (_g2734727358_ _g2734827362_)))))
          (_g2734627388_ _$stx27343_)))))
  (define |gerbil/core::<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx27392_)
      (let ((_g2739527402_
             (lambda (_g2739627398_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2739627398_))))
        (_g2739527402_ _$stx27392_)))))
