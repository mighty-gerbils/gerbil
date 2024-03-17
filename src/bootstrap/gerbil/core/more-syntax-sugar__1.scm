(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
    (lambda (_$stx47857_)
      (let* ((_g4786147872_
              (lambda (_g4786247868_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g4786247868_)))
             (_g4786047902_
              (lambda (_g4786247876_)
                (if (gx#stx-pair? _g4786247876_)
                    (let ((_e4786447879_ (gx#syntax-e _g4786247876_)))
                      (let ((_hd4786547883_
                             (let ()
                               (declare (not safe))
                               (##car _e4786447879_)))
                            (_tl4786647886_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4786447879_))))
                        ((lambda (_L47889_)
                           (let ((__tmp47923
                                  (gx#datum->syntax '#f 'make-setq-macro))
                                 (__tmp47919
                                  (let ((__tmp47920
                                         (let ((__tmp47921
                                                (let ((__tmp47922
                                                       (gx#datum->syntax
                                                        '#f
                                                        'syntax-rules)))
                                                  (declare (not safe))
                                                  (cons __tmp47922 _L47889_))))
                                           (declare (not safe))
                                           (cons __tmp47921 '()))))
                                    (declare (not safe))
                                    (cons 'macro: __tmp47920))))
                             (declare (not safe))
                             (cons __tmp47923 __tmp47919)))
                         _tl4786647886_)))
                    (_g4786147872_ _g4786247876_)))))
        (_g4786047902_ _$stx47857_))))
  (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
    (lambda (_$stx47906_)
      (let ((_g4790947916_
             (lambda (_g4791047912_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g4791047912_))))
        (_g4790947916_ _$stx47906_)))))
