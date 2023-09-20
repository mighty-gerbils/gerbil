(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_$stx63889_)
    (let* ((_g6389363907_
            (lambda (_g6389463903_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g6389463903_)))
           (_g6389263949_
            (lambda (_g6389463911_)
              (if (gx#stx-pair? _g6389463911_)
                  (let ((_e6389663914_ (gx#syntax-e _g6389463911_)))
                    (let ((_hd6389763918_
                           (let () (declare (not safe)) (##car _e6389663914_)))
                          (_tl6389863921_
                           (let ()
                             (declare (not safe))
                             (##cdr _e6389663914_))))
                      (if (gx#stx-pair? _tl6389863921_)
                          (let ((_e6389963924_ (gx#syntax-e _tl6389863921_)))
                            (let ((_hd6390063928_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6389963924_)))
                                  (_tl6390163931_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6389963924_))))
                              (if (gx#stx-null? _tl6390163931_)
                                  ((lambda (_L63934_)
                                     (cons (gx#datum->syntax__0 '#f 'with-lock)
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  '+driver-mutex+)
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L63934_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd6390063928_)
                                  (_g6389363907_ _g6389463911_))))
                          (_g6389363907_ _g6389463911_))))
                  (_g6389363907_ _g6389463911_)))))
      (_g6389263949_ _$stx63889_))))
