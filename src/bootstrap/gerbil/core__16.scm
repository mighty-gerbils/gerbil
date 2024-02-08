(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gerbil/core$<special>[:0:]#eval-when-compile|
  (lambda (_stx37326_)
    (let* ((_g3732937343_
            (lambda (_g3733037339_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g3733037339_)))
           (_g3732837385_
            (lambda (_g3733037347_)
              (if (gx#stx-pair? _g3733037347_)
                  (let ((_e3733437350_ (gx#syntax-e _g3733037347_)))
                    (let ((_hd3733337354_
                           (let () (declare (not safe)) (##car _e3733437350_)))
                          (_tl3733237357_
                           (let ()
                             (declare (not safe))
                             (##cdr _e3733437350_))))
                      (if (gx#stx-pair? _tl3733237357_)
                          (let ((_e3733737360_ (gx#syntax-e _tl3733237357_)))
                            (let ((_hd3733637364_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3733737360_)))
                                  (_tl3733537367_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3733737360_))))
                              (if (gx#stx-null? _tl3733537367_)
                                  ((lambda (_L37370_)
                                     (if (gx#current-expander-compiling?)
                                         (gx#eval-syntax _L37370_)
                                         '#!void)
                                     (let ((__tmp50653
                                            (gx#datum->syntax '#f 'void)))
                                       (declare (not safe))
                                       (cons __tmp50653 '())))
                                   _hd3733637364_)
                                  (_g3732937343_ _g3733037347_))))
                          (_g3732937343_ _g3733037347_))))
                  (_g3732937343_ _g3733037347_)))))
      (_g3732837385_ _stx37326_))))
