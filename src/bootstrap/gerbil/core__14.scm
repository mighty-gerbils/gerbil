(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx34550_)
      (let* ((_g3455434565_
              (lambda (_g3455534561_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3455534561_)))
             (_g3455334595_
              (lambda (_g3455534569_)
                (if (gx#stx-pair? _g3455534569_)
                    (let ((_e3455734572_ (gx#syntax-e _g3455534569_)))
                      (let ((_hd3455834576_
                             (let ()
                               (declare (not safe))
                               (##car _e3455734572_)))
                            (_tl3455934579_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3455734572_))))
                        ((lambda (_L34582_)
                           (let ((__tmp49650
                                  (gx#datum->syntax '#f 'make-setq-macro))
                                 (__tmp49646
                                  (let ((__tmp49647
                                         (let ((__tmp49648
                                                (let ((__tmp49649
                                                       (gx#datum->syntax
                                                        '#f
                                                        'syntax-rules)))
                                                  (declare (not safe))
                                                  (cons __tmp49649 _L34582_))))
                                           (declare (not safe))
                                           (cons __tmp49648 '()))))
                                    (declare (not safe))
                                    (cons 'macro: __tmp49647))))
                             (declare (not safe))
                             (cons __tmp49650 __tmp49646)))
                         _tl3455934579_)))
                    (_g3455434565_ _g3455534569_)))))
        (_g3455334595_ _$stx34550_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx34599_)
      (let ((_g3460234609_
             (lambda (_g3460334605_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3460334605_))))
        (_g3460234609_ _$stx34599_)))))
