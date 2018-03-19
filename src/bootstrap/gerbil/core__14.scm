(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 100))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx33218_)
      (let* ((_g3322233233_
              (lambda (_g3322333229_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3322333229_)))
             (_g3322133263_
              (lambda (_g3322333237_)
                (if (gx#stx-pair? _g3322333237_)
                    (let ((_e3322533240_ (gx#syntax-e _g3322333237_)))
                      (let ((_hd3322633244_ (##car _e3322533240_))
                            (_tl3322733247_ (##cdr _e3322533240_)))
                        ((lambda (_L33250_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _L33250_)
                                             '()))))
                         _tl3322733247_)))
                    (_g3322233233_ _g3322333237_)))))
        (_g3322133263_ _$stx33218_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx33267_)
      (let ((_g3327033277_
             (lambda (_g3327133273_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g3327133273_))))
        (_g3327033277_ _$stx33267_)))))
