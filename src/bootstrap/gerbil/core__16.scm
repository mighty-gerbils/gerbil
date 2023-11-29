(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gerbil/core$<special>[:0:]#eval-when-compile|
  (lambda (_stx36874_)
    (let* ((_g3687736891_
            (lambda (_g3687836887_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g3687836887_)))
           (_g3687636933_
            (lambda (_g3687836895_)
              (if (gx#stx-pair? _g3687836895_)
                  (let ((_e3688236898_ (gx#syntax-e _g3687836895_)))
                    (let ((_hd3688136902_
                           (let () (declare (not safe)) (##car _e3688236898_)))
                          (_tl3688036905_
                           (let ()
                             (declare (not safe))
                             (##cdr _e3688236898_))))
                      (if (gx#stx-pair? _tl3688036905_)
                          (let ((_e3688536908_ (gx#syntax-e _tl3688036905_)))
                            (let ((_hd3688436912_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3688536908_)))
                                  (_tl3688336915_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3688536908_))))
                              (if (gx#stx-null? _tl3688336915_)
                                  ((lambda (_L36918_)
                                     (if (gx#current-expander-compiling?)
                                         (gx#eval-syntax _L36918_)
                                         '#!void)
                                     (cons (gx#datum->syntax '#f 'void) '()))
                                   _hd3688436912_)
                                  (_g3687736891_ _g3687836895_))))
                          (_g3687736891_ _g3687836895_))))
                  (_g3687736891_ _g3687836895_)))))
      (_g3687636933_ _stx36874_))))
