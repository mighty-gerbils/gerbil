(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx32944_)
      (let* ((_g3294832959_
              (lambda (_g3294932955_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3294932955_)))
             (_g3294732989_
              (lambda (_g3294932963_)
                (if (gx#stx-pair? _g3294932963_)
                    (let ((_e3295132966_ (gx#syntax-e _g3294932963_)))
                      (let ((_hd3295232970_ (##car _e3295132966_))
                            (_tl3295332973_ (##cdr _e3295132966_)))
                        ((lambda (_L32976_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _L32976_)
                                             '()))))
                         _tl3295332973_)))
                    (_g3294832959_ _g3294932963_)))))
        (_g3294732989_ _$stx32944_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx32993_)
      (let ((_g3299633003_
             (lambda (_g3299732999_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g3299732999_))))
        (_g3299633003_ _$stx32993_)))))
