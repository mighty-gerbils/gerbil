(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx33837_)
      (let* ((_g3384133852_
              (lambda (_g3384233848_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3384233848_)))
             (_g3384033882_
              (lambda (_g3384233856_)
                (if (gx#stx-pair? _g3384233856_)
                    (let ((_e3384433859_ (gx#syntax-e _g3384233856_)))
                      (let ((_hd3384533863_ (##car _e3384433859_))
                            (_tl3384633866_ (##cdr _e3384433859_)))
                        ((lambda (_L33869_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _L33869_)
                                             '()))))
                         _tl3384633866_)))
                    (_g3384133852_ _g3384233856_)))))
        (_g3384033882_ _$stx33837_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx33886_)
      (let ((_g3388933896_
             (lambda (_g3389033892_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g3389033892_))))
        (_g3388933896_ _$stx33886_)))))
