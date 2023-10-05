(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gerbil/core$<special>[:0:]#eval-when-compile|
  (lambda (_stx36940_)
    (let* ((_g3694336957_
            (lambda (_g3694436953_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g3694436953_)))
           (_g3694236999_
            (lambda (_g3694436961_)
              (if (gx#stx-pair? _g3694436961_)
                  (let ((_e3694836964_ (gx#syntax-e _g3694436961_)))
                    (let ((_hd3694736968_
                           (let () (declare (not safe)) (##car _e3694836964_)))
                          (_tl3694636971_
                           (let ()
                             (declare (not safe))
                             (##cdr _e3694836964_))))
                      (if (gx#stx-pair? _tl3694636971_)
                          (let ((_e3695136974_ (gx#syntax-e _tl3694636971_)))
                            (let ((_hd3695036978_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3695136974_)))
                                  (_tl3694936981_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3695136974_))))
                              (if (gx#stx-null? _tl3694936981_)
                                  ((lambda (_L36984_)
                                     (if (gx#current-expander-compiling?)
                                         (gx#eval-syntax _L36984_)
                                         '#!void)
                                     (cons (gx#datum->syntax '#f 'void) '()))
                                   _hd3695036978_)
                                  (_g3694336957_ _g3694436961_))))
                          (_g3694336957_ _g3694436961_))))
                  (_g3694336957_ _g3694436961_)))))
      (_g3694236999_ _stx36940_))))
