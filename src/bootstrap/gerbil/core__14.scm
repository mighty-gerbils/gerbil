(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx34658_)
      (let* ((_g3466234673_
              (lambda (_g3466334669_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3466334669_)))
             (_g3466134703_
              (lambda (_g3466334677_)
                (if (gx#stx-pair? _g3466334677_)
                    (let ((_e3466734680_ (gx#syntax-e _g3466334677_)))
                      (let ((_hd3466634684_
                             (let ()
                               (declare (not safe))
                               (##car _e3466734680_)))
                            (_tl3466534687_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3466734680_))))
                        ((lambda (_L34690_)
                           (let ((__tmp51063
                                  (gx#datum->syntax '#f 'make-setq-macro))
                                 (__tmp51059
                                  (let ((__tmp51060
                                         (let ((__tmp51061
                                                (let ((__tmp51062
                                                       (gx#datum->syntax
                                                        '#f
                                                        'syntax-rules)))
                                                  (declare (not safe))
                                                  (cons __tmp51062 _L34690_))))
                                           (declare (not safe))
                                           (cons __tmp51061 '()))))
                                    (declare (not safe))
                                    (cons 'macro: __tmp51060))))
                             (declare (not safe))
                             (cons __tmp51063 __tmp51059)))
                         _tl3466534687_)))
                    (_g3466234673_ _g3466334677_)))))
        (_g3466134703_ _$stx34658_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx34707_)
      (let ((_g3471034717_
             (lambda (_g3471134713_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3471134713_))))
        (_g3471034717_ _$stx34707_)))))
