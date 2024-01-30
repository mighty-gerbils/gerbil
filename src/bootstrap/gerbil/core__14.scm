(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx34190_)
      (let* ((_g3419434205_
              (lambda (_g3419534201_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3419534201_)))
             (_g3419334235_
              (lambda (_g3419534209_)
                (if (gx#stx-pair? _g3419534209_)
                    (let ((_e3419934212_ (gx#syntax-e _g3419534209_)))
                      (let ((_hd3419834216_
                             (let ()
                               (declare (not safe))
                               (##car _e3419934212_)))
                            (_tl3419734219_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3419934212_))))
                        ((lambda (_L34222_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _L34222_)
                                             '()))))
                         _tl3419734219_)))
                    (_g3419434205_ _g3419534209_)))))
        (_g3419334235_ _$stx34190_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx34239_)
      (let ((_g3424234249_
             (lambda (_g3424334245_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3424334245_))))
        (_g3424234249_ _$stx34239_)))))
