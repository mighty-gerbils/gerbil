(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gerbil/core$<special>[:0:]#eval-when-compile|
  (lambda (_stx37037_)
    (let* ((_g3704037054_
            (lambda (_g3704137050_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g3704137050_)))
           (_g3703937096_
            (lambda (_g3704137058_)
              (if (gx#stx-pair? _g3704137058_)
                  (let ((_e3704537061_ (gx#syntax-e _g3704137058_)))
                    (let ((_hd3704437065_
                           (let () (declare (not safe)) (##car _e3704537061_)))
                          (_tl3704337068_
                           (let ()
                             (declare (not safe))
                             (##cdr _e3704537061_))))
                      (if (gx#stx-pair? _tl3704337068_)
                          (let ((_e3704837071_ (gx#syntax-e _tl3704337068_)))
                            (let ((_hd3704737075_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3704837071_)))
                                  (_tl3704637078_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3704837071_))))
                              (if (gx#stx-null? _tl3704637078_)
                                  ((lambda (_L37081_)
                                     (if (gx#current-expander-compiling?)
                                         (gx#eval-syntax _L37081_)
                                         '#!void)
                                     (let ((__tmp50870
                                            (gx#datum->syntax '#f 'void)))
                                       (declare (not safe))
                                       (cons __tmp50870 '())))
                                   _hd3704737075_)
                                  (_g3704037054_ _g3704137058_))))
                          (_g3704037054_ _g3704137058_))))
                  (_g3704037054_ _g3704137058_)))))
      (_g3703937096_ _stx37037_))))
