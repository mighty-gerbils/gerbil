(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx27057_)
      (let ((_g2706127072_
             (lambda (_g2706227068_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2706227068_))))
        (let ((_g2706027102_
               (lambda (_g2706227076_)
                 (if (gx#stx-pair? _g2706227076_)
                     (let ((_e2706427079_ (gx#syntax-e _g2706227076_)))
                       (let ((_hd2706527083_ (##car _e2706427079_))
                             (_tl2706627086_ (##cdr _e2706427079_)))
                         ((lambda (_L27089_)
                            (cons (gx#datum->syntax '#f 'make-setq-macro)
                                  (cons 'macro:
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'syntax-rules)
                                                    _L27089_)
                                              '()))))
                          _tl2706627086_)))
                     (_g2706127072_ _g2706227076_)))))
          (_g2706027102_ _$stx27057_)))))
  (define |gerbil/core::<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx27106_)
      (let ((_g2710927116_
             (lambda (_g2711027112_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2711027112_))))
        (_g2710927116_ _$stx27106_)))))
