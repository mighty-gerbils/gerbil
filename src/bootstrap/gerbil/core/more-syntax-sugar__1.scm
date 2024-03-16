(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
    (lambda (_$stx47817_)
      (let* ((_g4782147832_
              (lambda (_g4782247828_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g4782247828_)))
             (_g4782047862_
              (lambda (_g4782247836_)
                (if (gx#stx-pair? _g4782247836_)
                    (let ((_e4782447839_ (gx#syntax-e _g4782247836_)))
                      (let ((_hd4782547843_
                             (let ()
                               (declare (not safe))
                               (##car _e4782447839_)))
                            (_tl4782647846_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4782447839_))))
                        ((lambda (_L47849_)
                           (let ((__tmp47883
                                  (gx#datum->syntax '#f 'make-setq-macro))
                                 (__tmp47879
                                  (let ((__tmp47880
                                         (let ((__tmp47881
                                                (let ((__tmp47882
                                                       (gx#datum->syntax
                                                        '#f
                                                        'syntax-rules)))
                                                  (declare (not safe))
                                                  (cons __tmp47882 _L47849_))))
                                           (declare (not safe))
                                           (cons __tmp47881 '()))))
                                    (declare (not safe))
                                    (cons 'macro: __tmp47880))))
                             (declare (not safe))
                             (cons __tmp47883 __tmp47879)))
                         _tl4782647846_)))
                    (_g4782147832_ _g4782247836_)))))
        (_g4782047862_ _$stx47817_))))
  (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
    (lambda (_$stx47866_)
      (let ((_g4786947876_
             (lambda (_g4787047872_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g4787047872_))))
        (_g4786947876_ _$stx47866_)))))
