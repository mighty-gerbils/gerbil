(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_$stx63908_)
    (let* ((_g6391263926_
            (lambda (_g6391363922_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g6391363922_)))
           (_g6391163968_
            (lambda (_g6391363930_)
              (if (gx#stx-pair? _g6391363930_)
                  (let ((_e6391563933_ (gx#syntax-e _g6391363930_)))
                    (let ((_hd6391663937_
                           (let () (declare (not safe)) (##car _e6391563933_)))
                          (_tl6391763940_
                           (let ()
                             (declare (not safe))
                             (##cdr _e6391563933_))))
                      (if (gx#stx-pair? _tl6391763940_)
                          (let ((_e6391863943_ (gx#syntax-e _tl6391763940_)))
                            (let ((_hd6391963947_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6391863943_)))
                                  (_tl6392063950_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6391863943_))))
                              (if (gx#stx-null? _tl6392063950_)
                                  ((lambda (_L63953_)
                                     (cons (gx#datum->syntax__0 '#f 'with-lock)
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  '+driver-mutex+)
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L63953_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd6391963947_)
                                  (_g6391263926_ _g6391363930_))))
                          (_g6391263926_ _g6391363930_))))
                  (_g6391263926_ _g6391363930_)))))
      (_g6391163968_ _$stx63908_))))
