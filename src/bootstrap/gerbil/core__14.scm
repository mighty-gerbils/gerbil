(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx27259_)
      (let ((_g2726327274_
             (lambda (_g2726427270_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2726427270_))))
        (let ((_g2726227304_
               (lambda (_g2726427278_)
                 (if (gx#stx-pair? _g2726427278_)
                     (let ((_e2726627281_ (gx#syntax-e _g2726427278_)))
                       (let ((_hd2726727285_ (##car _e2726627281_))
                             (_tl2726827288_ (##cdr _e2726627281_)))
                         ((lambda (_L27291_)
                            (cons (gx#datum->syntax '#f 'make-setq-macro)
                                  (cons 'macro:
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'syntax-rules)
                                                    _L27291_)
                                              '()))))
                          _tl2726827288_)))
                     (_g2726327274_ _g2726427278_)))))
          (_g2726227304_ _$stx27259_)))))
  (define |gerbil/core::<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx27308_)
      (let ((_g2731127318_
             (lambda (_g2731227314_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2731227314_))))
        (_g2731127318_ _$stx27308_)))))
