(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gerbil/core$<special>[:0:]#eval-when-compile|
  (lambda (_stx36500_)
    (let* ((_g3650336517_
            (lambda (_g3650436513_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g3650436513_)))
           (_g3650236559_
            (lambda (_g3650436521_)
              (if (gx#stx-pair? _g3650436521_)
                  (let ((_e3650836524_ (gx#syntax-e _g3650436521_)))
                    (let ((_hd3650736528_
                           (let () (declare (not safe)) (##car _e3650836524_)))
                          (_tl3650636531_
                           (let ()
                             (declare (not safe))
                             (##cdr _e3650836524_))))
                      (if (gx#stx-pair? _tl3650636531_)
                          (let ((_e3651136534_ (gx#syntax-e _tl3650636531_)))
                            (let ((_hd3651036538_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3651136534_)))
                                  (_tl3650936541_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3651136534_))))
                              (if (gx#stx-null? _tl3650936541_)
                                  ((lambda (_L36544_)
                                     (if (gx#current-expander-compiling?)
                                         (gx#eval-syntax _L36544_)
                                         '#!void)
                                     (cons (gx#datum->syntax '#f 'void) '()))
                                   _hd3651036538_)
                                  (_g3650336517_ _g3650436521_))))
                          (_g3650336517_ _g3650436521_))))
                  (_g3650336517_ _g3650436521_)))))
      (_g3650236559_ _stx36500_))))
