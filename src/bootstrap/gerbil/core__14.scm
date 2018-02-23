(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx29101_)
      (let* ((_g2910529116_
              (lambda (_g2910629112_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2910629112_)))
             (_g2910429146_
              (lambda (_g2910629120_)
                (if (gx#stx-pair? _g2910629120_)
                    (let ((_e2910829123_ (gx#syntax-e _g2910629120_)))
                      (let ((_hd2910929127_ (##car _e2910829123_))
                            (_tl2911029130_ (##cdr _e2910829123_)))
                        ((lambda (_L29133_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _L29133_)
                                             '()))))
                         _tl2911029130_)))
                    (_g2910529116_ _g2910629120_)))))
        (_g2910429146_ _$stx29101_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx29150_)
      (let ((_g2915329160_
             (lambda (_g2915429156_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2915429156_))))
        (_g2915329160_ _$stx29150_)))))
