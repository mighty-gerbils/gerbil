(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
    (lambda (_$stx50766_)
      (let* ((_g5077050781_
              (lambda (_g5077150777_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g5077150777_)))
             (_g5076950811_
              (lambda (_g5077150785_)
                (if (gx#stx-pair? _g5077150785_)
                    (let ((_e5077550788_ (gx#syntax-e _g5077150785_)))
                      (let ((_hd5077450792_
                             (let ()
                               (declare (not safe))
                               (##car _e5077550788_)))
                            (_tl5077350795_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5077550788_))))
                        ((lambda (_L50798_)
                           (let ((__tmp50832
                                  (gx#datum->syntax '#f 'make-setq-macro))
                                 (__tmp50828
                                  (let ((__tmp50829
                                         (let ((__tmp50830
                                                (let ((__tmp50831
                                                       (gx#datum->syntax
                                                        '#f
                                                        'syntax-rules)))
                                                  (declare (not safe))
                                                  (cons __tmp50831 _L50798_))))
                                           (declare (not safe))
                                           (cons __tmp50830 '()))))
                                    (declare (not safe))
                                    (cons 'macro: __tmp50829))))
                             (declare (not safe))
                             (cons __tmp50832 __tmp50828)))
                         _tl5077350795_)))
                    (_g5077050781_ _g5077150785_)))))
        (_g5076950811_ _$stx50766_))))
  (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
    (lambda (_$stx50815_)
      (let ((_g5081850825_
             (lambda (_g5081950821_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g5081950821_))))
        (_g5081850825_ _$stx50815_)))))
