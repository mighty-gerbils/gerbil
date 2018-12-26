(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx33799_)
      (let* ((_g3380333814_
              (lambda (_g3380433810_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3380433810_)))
             (_g3380233844_
              (lambda (_g3380433818_)
                (if (gx#stx-pair? _g3380433818_)
                    (let ((_e3380633821_ (gx#syntax-e _g3380433818_)))
                      (let ((_hd3380733825_ (##car _e3380633821_))
                            (_tl3380833828_ (##cdr _e3380633821_)))
                        ((lambda (_L33831_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _L33831_)
                                             '()))))
                         _tl3380833828_)))
                    (_g3380333814_ _g3380433818_)))))
        (_g3380233844_ _$stx33799_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx33848_)
      (let ((_g3385133858_
             (lambda (_g3385233854_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g3385233854_))))
        (_g3385133858_ _$stx33848_)))))
