(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx32397_)
      (let* ((_g3240132412_
              (lambda (_g3240232408_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3240232408_)))
             (_g3240032442_
              (lambda (_g3240232416_)
                (if (gx#stx-pair? _g3240232416_)
                    (let ((_e3240432419_ (gx#syntax-e _g3240232416_)))
                      (let ((_hd3240532423_ (##car _e3240432419_))
                            (_tl3240632426_ (##cdr _e3240432419_)))
                        ((lambda (_L32429_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _L32429_)
                                             '()))))
                         _tl3240632426_)))
                    (_g3240132412_ _g3240232416_)))))
        (_g3240032442_ _$stx32397_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx32446_)
      (let ((_g3244932456_
             (lambda (_g3245032452_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g3245032452_))))
        (_g3244932456_ _$stx32446_)))))
