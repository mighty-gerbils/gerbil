(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
    (lambda (_$stx47850_)
      (let* ((_g4785447865_
              (lambda (_g4785547861_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g4785547861_)))
             (_g4785347895_
              (lambda (_g4785547869_)
                (if (gx#stx-pair? _g4785547869_)
                    (let ((_e4785947872_ (gx#syntax-e _g4785547869_)))
                      (let ((_hd4785847876_
                             (let ()
                               (declare (not safe))
                               (##car _e4785947872_)))
                            (_tl4785747879_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4785947872_))))
                        ((lambda (_L47882_)
                           (let ((__tmp47916
                                  (gx#datum->syntax '#f 'make-setq-macro))
                                 (__tmp47912
                                  (let ((__tmp47913
                                         (let ((__tmp47914
                                                (let ((__tmp47915
                                                       (gx#datum->syntax
                                                        '#f
                                                        'syntax-rules)))
                                                  (declare (not safe))
                                                  (cons __tmp47915 _L47882_))))
                                           (declare (not safe))
                                           (cons __tmp47914 '()))))
                                    (declare (not safe))
                                    (cons 'macro: __tmp47913))))
                             (declare (not safe))
                             (cons __tmp47916 __tmp47912)))
                         _tl4785747879_)))
                    (_g4785447865_ _g4785547869_)))))
        (_g4785347895_ _$stx47850_))))
  (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
    (lambda (_$stx47899_)
      (let ((_g4790247909_
             (lambda (_g4790347905_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g4790347905_))))
        (_g4790247909_ _$stx47899_)))))
