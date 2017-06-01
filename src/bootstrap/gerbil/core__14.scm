(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx27339_)
      (let ((_g2734327354_
             (lambda (_g2734427350_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2734427350_))))
        (let ((_g2734227384_
               (lambda (_g2734427358_)
                 (if (gx#stx-pair? _g2734427358_)
                     (let ((_e2734627361_ (gx#syntax-e _g2734427358_)))
                       (let ((_hd2734727365_ (##car _e2734627361_))
                             (_tl2734827368_ (##cdr _e2734627361_)))
                         ((lambda (_L27371_)
                            (cons (gx#datum->syntax '#f 'make-setq-macro)
                                  (cons 'macro:
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'syntax-rules)
                                                    _L27371_)
                                              '()))))
                          _tl2734827368_)))
                     (_g2734327354_ _g2734427358_)))))
          (_g2734227384_ _$stx27339_)))))
  (define |gerbil/core::<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx27388_)
      (let ((_g2739127398_
             (lambda (_g2739227394_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2739227394_))))
        (_g2739127398_ _$stx27388_)))))
