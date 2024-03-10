(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
    (lambda (_$stx47076_)
      (let* ((_g4708047091_
              (lambda (_g4708147087_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g4708147087_)))
             (_g4707947121_
              (lambda (_g4708147095_)
                (if (gx#stx-pair? _g4708147095_)
                    (let ((_e4708547098_ (gx#syntax-e _g4708147095_)))
                      (let ((_hd4708447102_
                             (let ()
                               (declare (not safe))
                               (##car _e4708547098_)))
                            (_tl4708347105_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4708547098_))))
                        ((lambda (_L47108_)
                           (let ((__tmp47142
                                  (gx#datum->syntax '#f 'make-setq-macro))
                                 (__tmp47138
                                  (let ((__tmp47139
                                         (let ((__tmp47140
                                                (let ((__tmp47141
                                                       (gx#datum->syntax
                                                        '#f
                                                        'syntax-rules)))
                                                  (declare (not safe))
                                                  (cons __tmp47141 _L47108_))))
                                           (declare (not safe))
                                           (cons __tmp47140 '()))))
                                    (declare (not safe))
                                    (cons 'macro: __tmp47139))))
                             (declare (not safe))
                             (cons __tmp47142 __tmp47138)))
                         _tl4708347105_)))
                    (_g4708047091_ _g4708147095_)))))
        (_g4707947121_ _$stx47076_))))
  (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
    (lambda (_$stx47125_)
      (let ((_g4712847135_
             (lambda (_g4712947131_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g4712947131_))))
        (_g4712847135_ _$stx47125_)))))
