(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gerbil/core$<special>[:0:]#eval-when-compile|
  (lambda (_stx37041_)
    (let* ((_g3704437058_
            (lambda (_g3704537054_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g3704537054_)))
           (_g3704337100_
            (lambda (_g3704537062_)
              (if (gx#stx-pair? _g3704537062_)
                  (let ((_e3704937065_ (gx#syntax-e _g3704537062_)))
                    (let ((_hd3704837069_
                           (let () (declare (not safe)) (##car _e3704937065_)))
                          (_tl3704737072_
                           (let ()
                             (declare (not safe))
                             (##cdr _e3704937065_))))
                      (if (gx#stx-pair? _tl3704737072_)
                          (let ((_e3705237075_ (gx#syntax-e _tl3704737072_)))
                            (let ((_hd3705137079_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3705237075_)))
                                  (_tl3705037082_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3705237075_))))
                              (if (gx#stx-null? _tl3705037082_)
                                  ((lambda (_L37085_)
                                     (if (gx#current-expander-compiling?)
                                         (gx#eval-syntax _L37085_)
                                         '#!void)
                                     (let ((__tmp50584
                                            (gx#datum->syntax '#f 'void)))
                                       (declare (not safe))
                                       (cons __tmp50584 '())))
                                   _hd3705137079_)
                                  (_g3704437058_ _g3704537062_))))
                          (_g3704437058_ _g3704537062_))))
                  (_g3704437058_ _g3704537062_)))))
      (_g3704337100_ _stx37041_))))
