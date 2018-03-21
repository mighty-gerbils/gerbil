(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 100))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx33259_)
      (let* ((_g3326333274_
              (lambda (_g3326433270_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3326433270_)))
             (_g3326233304_
              (lambda (_g3326433278_)
                (if (gx#stx-pair? _g3326433278_)
                    (let ((_e3326633281_ (gx#syntax-e _g3326433278_)))
                      (let ((_hd3326733285_ (##car _e3326633281_))
                            (_tl3326833288_ (##cdr _e3326633281_)))
                        ((lambda (_L33291_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _L33291_)
                                             '()))))
                         _tl3326833288_)))
                    (_g3326333274_ _g3326433278_)))))
        (_g3326233304_ _$stx33259_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx33308_)
      (let ((_g3331133318_
             (lambda (_g3331233314_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g3331233314_))))
        (_g3331133318_ _$stx33308_)))))
