(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gerbil/core$<special>[:0:]#eval-when-compile|
  (lambda (_stx37218_)
    (let* ((_g3722137235_
            (lambda (_g3722237231_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g3722237231_)))
           (_g3722037277_
            (lambda (_g3722237239_)
              (if (gx#stx-pair? _g3722237239_)
                  (let ((_e3722637242_ (gx#syntax-e _g3722237239_)))
                    (let ((_hd3722537246_
                           (let () (declare (not safe)) (##car _e3722637242_)))
                          (_tl3722437249_
                           (let ()
                             (declare (not safe))
                             (##cdr _e3722637242_))))
                      (if (gx#stx-pair? _tl3722437249_)
                          (let ((_e3722937252_ (gx#syntax-e _tl3722437249_)))
                            (let ((_hd3722837256_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3722937252_)))
                                  (_tl3722737259_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3722937252_))))
                              (if (gx#stx-null? _tl3722737259_)
                                  ((lambda (_L37262_)
                                     (if (gx#current-expander-compiling?)
                                         (gx#eval-syntax _L37262_)
                                         '#!void)
                                     (let ((__tmp53033
                                            (gx#datum->syntax '#f 'void)))
                                       (declare (not safe))
                                       (cons __tmp53033 '())))
                                   _hd3722837256_)
                                  (_g3722137235_ _g3722237239_))))
                          (_g3722137235_ _g3722237239_))))
                  (_g3722137235_ _g3722237239_)))))
      (_g3722037277_ _stx37218_))))
