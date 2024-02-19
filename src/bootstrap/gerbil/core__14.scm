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
                    (let ((_e3455934572_ (gx#syntax-e _g3455534569_)))
                      (let ((_hd3455834576_
                             (let ()
                               (declare (not safe))
                               (##car _e3455934572_)))
                            (_tl3455734579_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3455934572_))))
                        ((lambda (_L34582_)
                           (let ((__tmp50438
                                  (gx#datum->syntax '#f 'make-setq-macro))
                                 (__tmp50434
                                  (let ((__tmp50435
                                         (let ((__tmp50436
                                                (let ((__tmp50437
                                                       (gx#datum->syntax
                                                        '#f
                                                        'syntax-rules)))
                                                  (declare (not safe))
                                                  (cons __tmp50437 _L34582_))))
                                           (declare (not safe))
                                           (cons __tmp50436 '()))))
                                    (declare (not safe))
                                    (cons 'macro: __tmp50435))))
                             (declare (not safe))
                             (cons __tmp50438 __tmp50434)))
                         _tl3455734579_)))
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
