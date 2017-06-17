(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx27344_)
      (let ((_g2734827359_
             (lambda (_g2734927355_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2734927355_))))
        (let ((_g2734727389_
               (lambda (_g2734927363_)
                 (if (gx#stx-pair? _g2734927363_)
                     (let ((_e2735127366_ (gx#syntax-e _g2734927363_)))
                       (let ((_hd2735227370_ (##car _e2735127366_))
                             (_tl2735327373_ (##cdr _e2735127366_)))
                         ((lambda (_L27376_)
                            (cons (gx#datum->syntax '#f 'make-setq-macro)
                                  (cons 'macro:
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'syntax-rules)
                                                    _L27376_)
                                              '()))))
                          _tl2735327373_)))
                     (_g2734827359_ _g2734927363_)))))
          (_g2734727389_ _$stx27344_)))))
  (define |gerbil/core::<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx27393_)
      (let ((_g2739627403_
             (lambda (_g2739727399_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2739727399_))))
        (_g2739627403_ _$stx27393_)))))
