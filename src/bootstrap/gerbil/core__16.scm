(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gerbil/core$<special>[:0:]#eval-when-compile|
  (lambda (_stx36407_)
    (let* ((_g3641036424_
            (lambda (_g3641136420_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g3641136420_)))
           (_g3640936466_
            (lambda (_g3641136428_)
              (if (gx#stx-pair? _g3641136428_)
                  (let ((_e3641336431_ (gx#syntax-e _g3641136428_)))
                    (let ((_hd3641436435_
                           (let () (declare (not safe)) (##car _e3641336431_)))
                          (_tl3641536438_
                           (let ()
                             (declare (not safe))
                             (##cdr _e3641336431_))))
                      (if (gx#stx-pair? _tl3641536438_)
                          (let ((_e3641636441_ (gx#syntax-e _tl3641536438_)))
                            (let ((_hd3641736445_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3641636441_)))
                                  (_tl3641836448_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3641636441_))))
                              (if (gx#stx-null? _tl3641836448_)
                                  ((lambda (_L36451_)
                                     (if (gx#current-expander-compiling?)
                                         (gx#eval-syntax _L36451_)
                                         '#!void)
                                     (cons (gx#datum->syntax '#f 'void) '()))
                                   _hd3641736445_)
                                  (_g3641036424_ _g3641136428_))))
                          (_g3641036424_ _g3641136428_))))
                  (_g3641036424_ _g3641136428_)))))
      (_g3640936466_ _stx36407_))))
