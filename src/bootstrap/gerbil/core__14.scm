(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx32189_)
      (let* ((_g3219332204_
              (lambda (_g3219432200_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3219432200_)))
             (_g3219232234_
              (lambda (_g3219432208_)
                (if (gx#stx-pair? _g3219432208_)
                    (let ((_e3219632211_ (gx#syntax-e _g3219432208_)))
                      (let ((_hd3219732215_ (##car _e3219632211_))
                            (_tl3219832218_ (##cdr _e3219632211_)))
                        ((lambda (_L32221_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _L32221_)
                                             '()))))
                         _tl3219832218_)))
                    (_g3219332204_ _g3219432208_)))))
        (_g3219232234_ _$stx32189_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx32238_)
      (let ((_g3224132248_
             (lambda (_g3224232244_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g3224232244_))))
        (_g3224132248_ _$stx32238_)))))
