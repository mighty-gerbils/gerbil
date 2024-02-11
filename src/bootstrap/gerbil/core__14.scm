(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx34465_)
      (let* ((_g3446934480_
              (lambda (_g3447034476_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3447034476_)))
             (_g3446834510_
              (lambda (_g3447034484_)
                (if (gx#stx-pair? _g3447034484_)
                    (let ((_e3447434487_ (gx#syntax-e _g3447034484_)))
                      (let ((_hd3447334491_
                             (let ()
                               (declare (not safe))
                               (##car _e3447434487_)))
                            (_tl3447234494_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3447434487_))))
                        ((lambda (_L34497_)
                           (let ((__tmp50823
                                  (gx#datum->syntax '#f 'make-setq-macro))
                                 (__tmp50819
                                  (let ((__tmp50820
                                         (let ((__tmp50821
                                                (let ((__tmp50822
                                                       (gx#datum->syntax
                                                        '#f
                                                        'syntax-rules)))
                                                  (declare (not safe))
                                                  (cons __tmp50822 _L34497_))))
                                           (declare (not safe))
                                           (cons __tmp50821 '()))))
                                    (declare (not safe))
                                    (cons 'macro: __tmp50820))))
                             (declare (not safe))
                             (cons __tmp50823 __tmp50819)))
                         _tl3447234494_)))
                    (_g3446934480_ _g3447034484_)))))
        (_g3446834510_ _$stx34465_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx34514_)
      (let ((_g3451734524_
             (lambda (_g3451834520_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3451834520_))))
        (_g3451734524_ _$stx34514_)))))
