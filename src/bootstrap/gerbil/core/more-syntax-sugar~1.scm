(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
    (lambda (_$stx44677_)
      (let* ((_g4468144692_
              (lambda (_g4468244688_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g4468244688_)))
             (_g4468044722_
              (lambda (_g4468244696_)
                (if (gx#stx-pair? _g4468244696_)
                    (let ((_e4468644699_ (gx#syntax-e _g4468244696_)))
                      (let ((_hd4468544703_
                             (let ()
                               (declare (not safe))
                               (##car _e4468644699_)))
                            (_tl4468444706_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4468644699_))))
                        ((lambda (_L44709_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _L44709_)
                                             '()))))
                         _tl4468444706_)))
                    (_g4468144692_ _g4468244696_)))))
        (_g4468044722_ _$stx44677_))))
  (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
    (lambda (_$stx44726_)
      (let ((_g4472944736_
             (lambda (_g4473044732_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g4473044732_))))
        (_g4472944736_ _$stx44726_)))))
