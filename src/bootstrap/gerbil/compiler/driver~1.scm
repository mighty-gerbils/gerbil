(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx266897%_)
    (let* ((_%g266901266915%_
            (lambda (_%g266902266911%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g266902266911%_))))
           (_%g266900266957%_
            (lambda (_%g266902266919%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g266902266919%_))
                  (let ((_%e266904266922%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g266902266919%_))))
                    (let ((_%hd266905266926%_
                           (let ()
                             (declare (not safe))
                             (##car _%e266904266922%_)))
                          (_%tl266906266929%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e266904266922%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl266906266929%_))
                          (let ((_%e266907266932%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl266906266929%_))))
                            (let ((_%hd266908266936%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e266907266932%_)))
                                  (_%tl266909266939%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e266907266932%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl266909266939%_))
                                  ((lambda (_%g266903266942%_)
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
                     (cons '() (cons _%g266903266942%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd266908266936%_)
                                  (_%g266901266915%_ _%g266902266919%_))))
                          (_%g266901266915%_ _%g266902266919%_))))
                  (_%g266901266915%_ _%g266902266919%_)))))
      (_%g266900266957%_ _%$stx266897%_))))
