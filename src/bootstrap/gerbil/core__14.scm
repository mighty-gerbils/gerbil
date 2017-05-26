(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx27238_)
      (let ((_g2724227253_
             (lambda (_g2724327249_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2724327249_))))
        (let ((_g2724127283_
               (lambda (_g2724327257_)
                 (if (gx#stx-pair? _g2724327257_)
                     (let ((_e2724527260_ (gx#syntax-e _g2724327257_)))
                       (let ((_hd2724627264_ (##car _e2724527260_))
                             (_tl2724727267_ (##cdr _e2724527260_)))
                         ((lambda (_L27270_)
                            (cons (gx#datum->syntax '#f 'make-setq-macro)
                                  (cons 'macro:
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'syntax-rules)
                                                    _L27270_)
                                              '()))))
                          _tl2724727267_)))
                     (_g2724227253_ _g2724327257_)))))
          (_g2724127283_ _$stx27238_)))))
  (define |gerbil/core::<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx27287_)
      (let ((_g2729027297_
             (lambda (_g2729127293_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2729127293_))))
        (_g2729027297_ _$stx27287_)))))
