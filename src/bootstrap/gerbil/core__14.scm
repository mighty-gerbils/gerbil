(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx33277_)
      (let* ((_g3328133292_
              (lambda (_g3328233288_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3328233288_)))
             (_g3328033322_
              (lambda (_g3328233296_)
                (if (gx#stx-pair? _g3328233296_)
                    (let ((_e3328433299_ (gx#syntax-e _g3328233296_)))
                      (let ((_hd3328533303_ (##car _e3328433299_))
                            (_tl3328633306_ (##cdr _e3328433299_)))
                        ((lambda (_L33309_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _L33309_)
                                             '()))))
                         _tl3328633306_)))
                    (_g3328133292_ _g3328233296_)))))
        (_g3328033322_ _$stx33277_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx33326_)
      (let ((_g3332933336_
             (lambda (_g3333033332_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g3333033332_))))
        (_g3332933336_ _$stx33326_)))))
