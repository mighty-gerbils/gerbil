(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx33371_)
      (let* ((_g3337533386_
              (lambda (_g3337633382_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3337633382_)))
             (_g3337433416_
              (lambda (_g3337633390_)
                (if (gx#stx-pair? _g3337633390_)
                    (let ((_e3337833393_ (gx#syntax-e _g3337633390_)))
                      (let ((_hd3337933397_ (##car _e3337833393_))
                            (_tl3338033400_ (##cdr _e3337833393_)))
                        ((lambda (_L33403_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _L33403_)
                                             '()))))
                         _tl3338033400_)))
                    (_g3337533386_ _g3337633390_)))))
        (_g3337433416_ _$stx33371_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx33420_)
      (let ((_g3342333430_
             (lambda (_g3342433426_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g3342433426_))))
        (_g3342333430_ _$stx33420_)))))
