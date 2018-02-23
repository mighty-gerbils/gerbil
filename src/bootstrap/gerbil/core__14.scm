(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx29088_)
      (let* ((_g2909229103_
              (lambda (_g2909329099_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2909329099_)))
             (_g2909129133_
              (lambda (_g2909329107_)
                (if (gx#stx-pair? _g2909329107_)
                    (let ((_e2909529110_ (gx#syntax-e _g2909329107_)))
                      (let ((_hd2909629114_ (##car _e2909529110_))
                            (_tl2909729117_ (##cdr _e2909529110_)))
                        ((lambda (_L29120_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _L29120_)
                                             '()))))
                         _tl2909729117_)))
                    (_g2909229103_ _g2909329107_)))))
        (_g2909129133_ _$stx29088_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx29137_)
      (let ((_g2914029147_
             (lambda (_g2914129143_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2914129143_))))
        (_g2914029147_ _$stx29137_)))))
