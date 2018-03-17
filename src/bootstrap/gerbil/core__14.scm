(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx32762_)
      (let* ((_g3276632777_
              (lambda (_g3276732773_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3276732773_)))
             (_g3276532807_
              (lambda (_g3276732781_)
                (if (gx#stx-pair? _g3276732781_)
                    (let ((_e3276932784_ (gx#syntax-e _g3276732781_)))
                      (let ((_hd3277032788_ (##car _e3276932784_))
                            (_tl3277132791_ (##cdr _e3276932784_)))
                        ((lambda (_L32794_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _L32794_)
                                             '()))))
                         _tl3277132791_)))
                    (_g3276632777_ _g3276732781_)))))
        (_g3276532807_ _$stx32762_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx32811_)
      (let ((_g3281432821_
             (lambda (_g3281532817_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g3281532817_))))
        (_g3281432821_ _$stx32811_)))))
