(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx28140_)
      (let ((_g2814428155_
             (lambda (_g2814528151_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2814528151_))))
        (let ((_g2814328185_
               (lambda (_g2814528159_)
                 (if (gx#stx-pair? _g2814528159_)
                     (let ((_e2814728162_ (gx#syntax-e _g2814528159_)))
                       (let ((_hd2814828166_ (##car _e2814728162_))
                             (_tl2814928169_ (##cdr _e2814728162_)))
                         ((lambda (_L28172_)
                            (cons (gx#datum->syntax '#f 'make-setq-macro)
                                  (cons 'macro:
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'syntax-rules)
                                                    _L28172_)
                                              '()))))
                          _tl2814928169_)))
                     (_g2814428155_ _g2814528159_)))))
          (_g2814328185_ _$stx28140_)))))
  (define |gerbil/core::<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx28189_)
      (let ((_g2819228199_
             (lambda (_g2819328195_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2819328195_))))
        (_g2819228199_ _$stx28189_)))))
