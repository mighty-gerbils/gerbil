(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx32764_)
      (let* ((_g3276832779_
              (lambda (_g3276932775_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3276932775_)))
             (_g3276732809_
              (lambda (_g3276932783_)
                (if (gx#stx-pair? _g3276932783_)
                    (let ((_e3277132786_ (gx#syntax-e _g3276932783_)))
                      (let ((_hd3277232790_ (##car _e3277132786_))
                            (_tl3277332793_ (##cdr _e3277132786_)))
                        ((lambda (_L32796_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _L32796_)
                                             '()))))
                         _tl3277332793_)))
                    (_g3276832779_ _g3276932783_)))))
        (_g3276732809_ _$stx32764_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx32813_)
      (let ((_g3281632823_
             (lambda (_g3281732819_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g3281732819_))))
        (_g3281632823_ _$stx32813_)))))
