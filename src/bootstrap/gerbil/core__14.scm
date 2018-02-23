(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx29085_)
      (let* ((_g2908929100_
              (lambda (_g2909029096_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2909029096_)))
             (_g2908829130_
              (lambda (_g2909029104_)
                (if (gx#stx-pair? _g2909029104_)
                    (let ((_e2909229107_ (gx#syntax-e _g2909029104_)))
                      (let ((_hd2909329111_ (##car _e2909229107_))
                            (_tl2909429114_ (##cdr _e2909229107_)))
                        ((lambda (_L29117_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _L29117_)
                                             '()))))
                         _tl2909429114_)))
                    (_g2908929100_ _g2909029104_)))))
        (_g2908829130_ _$stx29085_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx29134_)
      (let ((_g2913729144_
             (lambda (_g2913829140_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2913829140_))))
        (_g2913729144_ _$stx29134_)))))
