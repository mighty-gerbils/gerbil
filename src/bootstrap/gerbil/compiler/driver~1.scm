(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx268529%_)
    (let* ((_%$%g268533268547%_
            (lambda (_%$%g268534268543%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g268534268543%_))))
           (_%$%g268532268589%_
            (lambda (_%$%g268534268551%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%$%g268534268551%_))
                  (let ((_%$%e268536268554%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%g268534268551%_))))
                    (let ((_%$%hd268537268558%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e268536268554%_)))
                          (_%$%tl268538268561%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e268536268554%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl268538268561%_))
                          (let ((_%$%e268539268564%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl268538268561%_))))
                            (let ((_%$%hd268540268568%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e268539268564%_)))
                                  (_%$%tl268541268571%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e268539268564%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl268541268571%_))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'with-lock))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 '+driver-mutex+))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'lambda))
                                                          (cons '()
                                                                (cons _%$%hd268540268568%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (_%$%g268533268547%_ _%$%g268534268551%_))))
                          (_%$%g268533268547%_ _%$%g268534268551%_))))
                  (_%$%g268533268547%_ _%$%g268534268551%_)))))
      (_%$%g268532268589%_ _%$stx268529%_))))
