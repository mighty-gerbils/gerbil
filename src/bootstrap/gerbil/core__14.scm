(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx32634_)
      (let* ((_g3263832649_
              (lambda (_g3263932645_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3263932645_)))
             (_g3263732679_
              (lambda (_g3263932653_)
                (if (gx#stx-pair? _g3263932653_)
                    (let ((_e3264132656_ (gx#syntax-e _g3263932653_)))
                      (let ((_hd3264232660_ (##car _e3264132656_))
                            (_tl3264332663_ (##cdr _e3264132656_)))
                        ((lambda (_L32666_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _L32666_)
                                             '()))))
                         _tl3264332663_)))
                    (_g3263832649_ _g3263932653_)))))
        (_g3263732679_ _$stx32634_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx32683_)
      (let ((_g3268632693_
             (lambda (_g3268732689_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g3268732689_))))
        (_g3268632693_ _$stx32683_)))))
