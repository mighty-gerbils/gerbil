(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx33666_)
      (let* ((_g3367033681_
              (lambda (_g3367133677_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3367133677_)))
             (_g3366933711_
              (lambda (_g3367133685_)
                (if (gx#stx-pair? _g3367133685_)
                    (let ((_e3367333688_ (gx#syntax-e _g3367133685_)))
                      (let ((_hd3367433692_ (##car _e3367333688_))
                            (_tl3367533695_ (##cdr _e3367333688_)))
                        ((lambda (_L33698_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _L33698_)
                                             '()))))
                         _tl3367533695_)))
                    (_g3367033681_ _g3367133685_)))))
        (_g3366933711_ _$stx33666_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx33715_)
      (let ((_g3371833725_
             (lambda (_g3371933721_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g3371933721_))))
        (_g3371833725_ _$stx33715_)))))
