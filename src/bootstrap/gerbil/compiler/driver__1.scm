(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_$stx68361_)
    (let* ((_g6836568379_
            (lambda (_g6836668375_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error '#f '"Bad syntax" _g6836668375_))))
           (_g6836468421_
            (lambda (_g6836668383_)
              (if (let () (declare (not safe)) (gx#stx-pair? _g6836668383_))
                  (let ((_e6837068386_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _g6836668383_))))
                    (let ((_hd6836968390_
                           (let () (declare (not safe)) (##car _e6837068386_)))
                          (_tl6836868393_
                           (let ()
                             (declare (not safe))
                             (##cdr _e6837068386_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl6836868393_))
                          (let ((_e6837368396_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _tl6836868393_))))
                            (let ((_hd6837268400_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6837368396_)))
                                  (_tl6837168403_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6837368396_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl6837168403_))
                                  ((lambda (_L68406_)
                                     (let ((__tmp69923
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'with-lock)))
                                           (__tmp69916
                                            (let ((__tmp69922
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      '+driver-mutex+)))
                                                  (__tmp69917
                                                   (let ((__tmp69918
                                                          (let ((__tmp69921
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'lambda)))
                        (__tmp69919
                         (let ((__tmp69920
                                (let ()
                                  (declare (not safe))
                                  (cons _L68406_ '()))))
                           (declare (not safe))
                           (cons '() __tmp69920))))
                    (declare (not safe))
                    (cons __tmp69921 __tmp69919))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp69918 '()))))
                                              (declare (not safe))
                                              (cons __tmp69922 __tmp69917))))
                                       (declare (not safe))
                                       (cons __tmp69923 __tmp69916)))
                                   _hd6837268400_)
                                  (_g6836568379_ _g6836668383_))))
                          (_g6836568379_ _g6836668383_))))
                  (_g6836568379_ _g6836668383_)))))
      (_g6836468421_ _$stx68361_))))
