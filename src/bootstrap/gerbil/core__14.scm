(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx28141_)
      (let ((_g2814528156_
             (lambda (_g2814628152_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2814628152_))))
        (let ((_g2814428186_
               (lambda (_g2814628160_)
                 (if (gx#stx-pair? _g2814628160_)
                     (let ((_e2814828163_ (gx#syntax-e _g2814628160_)))
                       (let ((_hd2814928167_ (##car _e2814828163_))
                             (_tl2815028170_ (##cdr _e2814828163_)))
                         ((lambda (_L28173_)
                            (cons (gx#datum->syntax '#f 'make-setq-macro)
                                  (cons 'macro:
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'syntax-rules)
                                                    _L28173_)
                                              '()))))
                          _tl2815028170_)))
                     (_g2814528156_ _g2814628160_)))))
          (_g2814428186_ _$stx28141_)))))
  (define |gerbil/core::<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx28190_)
      (let ((_g2819328200_
             (lambda (_g2819428196_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2819428196_))))
        (_g2819328200_ _$stx28190_)))))
