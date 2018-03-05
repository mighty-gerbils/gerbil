(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx32184_)
      (let* ((_g3218832199_
              (lambda (_g3218932195_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3218932195_)))
             (_g3218732229_
              (lambda (_g3218932203_)
                (if (gx#stx-pair? _g3218932203_)
                    (let ((_e3219132206_ (gx#syntax-e _g3218932203_)))
                      (let ((_hd3219232210_ (##car _e3219132206_))
                            (_tl3219332213_ (##cdr _e3219132206_)))
                        ((lambda (_L32216_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _L32216_)
                                             '()))))
                         _tl3219332213_)))
                    (_g3218832199_ _g3218932203_)))))
        (_g3218732229_ _$stx32184_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx32233_)
      (let ((_g3223632243_
             (lambda (_g3223732239_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g3223732239_))))
        (_g3223632243_ _$stx32233_)))))
