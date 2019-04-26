(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx33963_)
      (let* ((_g3396733978_
              (lambda (_g3396833974_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3396833974_)))
             (_g3396634008_
              (lambda (_g3396833982_)
                (if (gx#stx-pair? _g3396833982_)
                    (let ((_e3397033985_ (gx#syntax-e _g3396833982_)))
                      (let ((_hd3397133989_ (##car _e3397033985_))
                            (_tl3397233992_ (##cdr _e3397033985_)))
                        ((lambda (_L33995_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _L33995_)
                                             '()))))
                         _tl3397233992_)))
                    (_g3396733978_ _g3396833982_)))))
        (_g3396634008_ _$stx33963_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx34012_)
      (let ((_g3401534022_
             (lambda (_g3401634018_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g3401634018_))))
        (_g3401534022_ _$stx34012_)))))
