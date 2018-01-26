(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx28783_)
      (let* ((_g2878728798_
              (lambda (_g2878828794_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2878828794_)))
             (_g2878628828_
              (lambda (_g2878828802_)
                (if (gx#stx-pair? _g2878828802_)
                    (let ((_e2879028805_ (gx#syntax-e _g2878828802_)))
                      (let ((_hd2879128809_ (##car _e2879028805_))
                            (_tl2879228812_ (##cdr _e2879028805_)))
                        ((lambda (_L28815_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _L28815_)
                                             '()))))
                         _tl2879228812_)))
                    (_g2878728798_ _g2878828802_)))))
        (_g2878628828_ _$stx28783_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx28832_)
      (let ((_g2883528842_
             (lambda (_g2883628838_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2883628838_))))
        (_g2883528842_ _$stx28832_)))))
