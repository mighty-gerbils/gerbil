(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx34256_)
      (let* ((_g3426034271_
              (lambda (_g3426134267_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3426134267_)))
             (_g3425934301_
              (lambda (_g3426134275_)
                (if (gx#stx-pair? _g3426134275_)
                    (let ((_e3426534278_ (gx#syntax-e _g3426134275_)))
                      (let ((_hd3426434282_
                             (let ()
                               (declare (not safe))
                               (##car _e3426534278_)))
                            (_tl3426334285_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3426534278_))))
                        ((lambda (_L34288_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _L34288_)
                                             '()))))
                         _tl3426334285_)))
                    (_g3426034271_ _g3426134275_)))))
        (_g3425934301_ _$stx34256_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx34305_)
      (let ((_g3430834315_
             (lambda (_g3430934311_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g3430934311_))))
        (_g3430834315_ _$stx34305_)))))
