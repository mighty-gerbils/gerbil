(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_$stx68360_)
    (let* ((_g6836468378_
            (lambda (_g6836568374_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error '#f '"Bad syntax" _g6836568374_))))
           (_g6836368420_
            (lambda (_g6836568382_)
              (if (let () (declare (not safe)) (gx#stx-pair? _g6836568382_))
                  (let ((_e6836968385_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _g6836568382_))))
                    (let ((_hd6836868389_
                           (let () (declare (not safe)) (##car _e6836968385_)))
                          (_tl6836768392_
                           (let ()
                             (declare (not safe))
                             (##cdr _e6836968385_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl6836768392_))
                          (let ((_e6837268395_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _tl6836768392_))))
                            (let ((_hd6837168399_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6837268395_)))
                                  (_tl6837068402_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6837268395_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl6837068402_))
                                  ((lambda (_L68405_)
                                     (let ((__tmp69922
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'with-lock)))
                                           (__tmp69915
                                            (let ((__tmp69921
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      '+driver-mutex+)))
                                                  (__tmp69916
                                                   (let ((__tmp69917
                                                          (let ((__tmp69920
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'lambda)))
                        (__tmp69918
                         (let ((__tmp69919
                                (let ()
                                  (declare (not safe))
                                  (cons _L68405_ '()))))
                           (declare (not safe))
                           (cons '() __tmp69919))))
                    (declare (not safe))
                    (cons __tmp69920 __tmp69918))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp69917 '()))))
                                              (declare (not safe))
                                              (cons __tmp69921 __tmp69916))))
                                       (declare (not safe))
                                       (cons __tmp69922 __tmp69915)))
                                   _hd6837168399_)
                                  (_g6836468378_ _g6836568382_))))
                          (_g6836468378_ _g6836568382_))))
                  (_g6836468378_ _g6836568382_)))))
      (_g6836368420_ _$stx68360_))))
