(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx45979_)
      (let ((_g4598345994_
             (lambda (_g4598445990_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4598445990_))))
        (let ((_g4598246024_
               (lambda (_g4598445998_)
                 (if (gx#stx-pair? _g4598445998_)
                     (let ((_e4598646001_ (gx#syntax-e _g4598445998_)))
                       (let ((_hd4598746005_ (##car _e4598646001_))
                             (_tl4598846008_ (##cdr _e4598646001_)))
                         ((lambda (_L46011_)
                            (cons (gx#datum->syntax '#f 'make-setq-macro)
                                  (cons 'macro:
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'syntax-rules)
                                                    _L46011_)
                                              '()))))
                          _tl4598846008_)))
                     (_g4598345994_ _g4598445998_)))))
          (_g4598246024_ _$stx45979_)))))
  (define |gerbil/core::<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx46028_)
      (let ((_g4603146038_
             (lambda (_g4603246034_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4603246034_))))
        (_g4603146038_ _$stx46028_)))))
