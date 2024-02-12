(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx34373_)
      (let* ((_g3437734388_
              (lambda (_g3437834384_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3437834384_)))
             (_g3437634418_
              (lambda (_g3437834392_)
                (if (gx#stx-pair? _g3437834392_)
                    (let ((_e3438234395_ (gx#syntax-e _g3437834392_)))
                      (let ((_hd3438134399_
                             (let ()
                               (declare (not safe))
                               (##car _e3438234395_)))
                            (_tl3438034402_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3438234395_))))
                        ((lambda (_L34405_)
                           (let ((__tmp50696
                                  (gx#datum->syntax '#f 'make-setq-macro))
                                 (__tmp50692
                                  (let ((__tmp50693
                                         (let ((__tmp50694
                                                (let ((__tmp50695
                                                       (gx#datum->syntax
                                                        '#f
                                                        'syntax-rules)))
                                                  (declare (not safe))
                                                  (cons __tmp50695 _L34405_))))
                                           (declare (not safe))
                                           (cons __tmp50694 '()))))
                                    (declare (not safe))
                                    (cons 'macro: __tmp50693))))
                             (declare (not safe))
                             (cons __tmp50696 __tmp50692)))
                         _tl3438034402_)))
                    (_g3437734388_ _g3437834392_)))))
        (_g3437634418_ _$stx34373_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx34422_)
      (let ((_g3442534432_
             (lambda (_g3442634428_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3442634428_))))
        (_g3442534432_ _$stx34422_)))))
