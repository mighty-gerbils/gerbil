(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_$stx67974_)
    (let* ((_g6797867992_
            (lambda (_g6797967988_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error '#f '"Bad syntax" _g6797967988_))))
           (_g6797768034_
            (lambda (_g6797967996_)
              (if (let () (declare (not safe)) (gx#stx-pair? _g6797967996_))
                  (let ((_e6798367999_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _g6797967996_))))
                    (let ((_hd6798268003_
                           (let () (declare (not safe)) (##car _e6798367999_)))
                          (_tl6798168006_
                           (let ()
                             (declare (not safe))
                             (##cdr _e6798367999_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl6798168006_))
                          (let ((_e6798668009_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _tl6798168006_))))
                            (let ((_hd6798568013_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6798668009_)))
                                  (_tl6798468016_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6798668009_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl6798468016_))
                                  ((lambda (_L68019_)
                                     (let ((__tmp69597
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'with-lock)))
                                           (__tmp69590
                                            (let ((__tmp69596
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      '+driver-mutex+)))
                                                  (__tmp69591
                                                   (let ((__tmp69592
                                                          (let ((__tmp69595
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'lambda)))
                        (__tmp69593
                         (let ((__tmp69594
                                (let ()
                                  (declare (not safe))
                                  (cons _L68019_ '()))))
                           (declare (not safe))
                           (cons '() __tmp69594))))
                    (declare (not safe))
                    (cons __tmp69595 __tmp69593))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp69592 '()))))
                                              (declare (not safe))
                                              (cons __tmp69596 __tmp69591))))
                                       (declare (not safe))
                                       (cons __tmp69597 __tmp69590)))
                                   _hd6798568013_)
                                  (_g6797867992_ _g6797967996_))))
                          (_g6797867992_ _g6797967996_))))
                  (_g6797867992_ _g6797967996_)))))
      (_g6797768034_ _$stx67974_))))
