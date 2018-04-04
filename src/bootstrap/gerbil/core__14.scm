(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx33370_)
      (let* ((_g3337433385_
              (lambda (_g3337533381_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3337533381_)))
             (_g3337333415_
              (lambda (_g3337533389_)
                (if (gx#stx-pair? _g3337533389_)
                    (let ((_e3337733392_ (gx#syntax-e _g3337533389_)))
                      (let ((_hd3337833396_ (##car _e3337733392_))
                            (_tl3337933399_ (##cdr _e3337733392_)))
                        ((lambda (_L33402_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _L33402_)
                                             '()))))
                         _tl3337933399_)))
                    (_g3337433385_ _g3337533389_)))))
        (_g3337333415_ _$stx33370_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx33419_)
      (let ((_g3342233429_
             (lambda (_g3342333425_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g3342333425_))))
        (_g3342233429_ _$stx33419_)))))
