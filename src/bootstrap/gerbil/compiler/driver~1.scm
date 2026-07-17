(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx268396%_)
    (let* ((_%$%g268400268414%_
            (lambda (_%$%g268401268410%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g268401268410%_))))
           (_%$%g268399268456%_
            (lambda (_%$%g268401268418%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%$%g268401268418%_))
                  (let ((_%$%e268403268421%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%g268401268418%_))))
                    (let ((_%$%hd268404268425%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e268403268421%_)))
                          (_%$%tl268405268428%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e268403268421%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl268405268428%_))
                          (let ((_%$%e268406268431%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl268405268428%_))))
                            (let ((_%$%hd268407268435%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e268406268431%_)))
                                  (_%$%tl268408268438%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e268406268431%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl268408268438%_))
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
                                                                (cons _%$%hd268407268435%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (_%$%g268400268414%_ _%$%g268401268418%_))))
                          (_%$%g268400268414%_ _%$%g268401268418%_))))
                  (_%$%g268400268414%_ _%$%g268401268418%_)))))
      (_%$%g268399268456%_ _%$stx268396%_))))
