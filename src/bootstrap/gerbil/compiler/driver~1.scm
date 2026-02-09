(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx255985%_)
    (let* ((_%g255989256003%_
            (lambda (_%g255990255999%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g255990255999%_))))
           (_%g255988256045%_
            (lambda (_%g255990256007%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g255990256007%_))
                  (let ((_%e255992256010%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g255990256007%_))))
                    (let ((_%hd255993256014%_
                           (let ()
                             (declare (not safe))
                             (##car _%e255992256010%_)))
                          (_%tl255994256017%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e255992256010%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl255994256017%_))
                          (let ((_%e255995256020%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl255994256017%_))))
                            (let ((_%hd255996256024%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e255995256020%_)))
                                  (_%tl255997256027%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e255995256020%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl255997256027%_))
                                  ((lambda (_%g255991256030%_)
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'with-lock))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '+driver-mutex+))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'lambda))
                     (cons '() (cons _%g255991256030%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd255996256024%_)
                                  (_%g255989256003%_ _%g255990256007%_))))
                          (_%g255989256003%_ _%g255990256007%_))))
                  (_%g255989256003%_ _%g255990256007%_)))))
      (_%g255988256045%_ _%$stx255985%_))))
