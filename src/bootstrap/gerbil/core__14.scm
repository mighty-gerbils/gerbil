(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx27338_)
      (let ((_g2734227353_
             (lambda (_g2734327349_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2734327349_))))
        (let ((_g2734127383_
               (lambda (_g2734327357_)
                 (if (gx#stx-pair? _g2734327357_)
                     (let ((_e2734527360_ (gx#syntax-e _g2734327357_)))
                       (let ((_hd2734627364_ (##car _e2734527360_))
                             (_tl2734727367_ (##cdr _e2734527360_)))
                         ((lambda (_L27370_)
                            (cons (gx#datum->syntax '#f 'make-setq-macro)
                                  (cons 'macro:
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'syntax-rules)
                                                    _L27370_)
                                              '()))))
                          _tl2734727367_)))
                     (_g2734227353_ _g2734327357_)))))
          (_g2734127383_ _$stx27338_)))))
  (define |gerbil/core::<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx27387_)
      (let ((_g2739027397_
             (lambda (_g2739127393_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2739127393_))))
        (_g2739027397_ _$stx27387_)))))
