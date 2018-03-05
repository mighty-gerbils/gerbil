(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx31994_)
      (let* ((_g3199832009_
              (lambda (_g3199932005_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3199932005_)))
             (_g3199732039_
              (lambda (_g3199932013_)
                (if (gx#stx-pair? _g3199932013_)
                    (let ((_e3200132016_ (gx#syntax-e _g3199932013_)))
                      (let ((_hd3200232020_ (##car _e3200132016_))
                            (_tl3200332023_ (##cdr _e3200132016_)))
                        ((lambda (_L32026_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _L32026_)
                                             '()))))
                         _tl3200332023_)))
                    (_g3199832009_ _g3199932013_)))))
        (_g3199732039_ _$stx31994_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx32043_)
      (let ((_g3204632053_
             (lambda (_g3204732049_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g3204732049_))))
        (_g3204632053_ _$stx32043_)))))
