(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx34369_)
      (let* ((_g3437334384_
              (lambda (_g3437434380_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g3437434380_)))
             (_g3437234414_
              (lambda (_g3437434388_)
                (if (gx#stx-pair? _g3437434388_)
                    (let ((_e3437834391_ (gx#syntax-e _g3437434388_)))
                      (let ((_hd3437734395_
                             (let ()
                               (declare (not safe))
                               (##car _e3437834391_)))
                            (_tl3437634398_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3437834391_))))
                        ((lambda (_L34401_)
                           (let ((__tmp50727
                                  (gx#datum->syntax '#f 'make-setq-macro))
                                 (__tmp50723
                                  (let ((__tmp50724
                                         (let ((__tmp50725
                                                (let ((__tmp50726
                                                       (gx#datum->syntax
                                                        '#f
                                                        'syntax-rules)))
                                                  (declare (not safe))
                                                  (cons __tmp50726 _L34401_))))
                                           (declare (not safe))
                                           (cons __tmp50725 '()))))
                                    (declare (not safe))
                                    (cons 'macro: __tmp50724))))
                             (declare (not safe))
                             (cons __tmp50727 __tmp50723)))
                         _tl3437634398_)))
                    (_g3437334384_ _g3437434388_)))))
        (_g3437234414_ _$stx34369_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx34418_)
      (let ((_g3442134428_
             (lambda (_g3442234424_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g3442234424_))))
        (_g3442134428_ _$stx34418_)))))
