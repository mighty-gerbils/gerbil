(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx201874%_)
    (let* ((_%g201878201892%_
            (lambda (_%g201879201888%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g201879201888%_))))
           (_%g201877201934%_
            (lambda (_%g201879201896%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g201879201896%_))
                  (let ((_%e201881201899%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g201879201896%_))))
                    (let ((_%hd201882201903%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201881201899%_)))
                          (_%tl201883201906%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201881201899%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201883201906%_))
                          (let ((_%e201884201909%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl201883201906%_))))
                            (let ((_%hd201885201913%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201884201909%_)))
                                  (_%tl201886201916%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201884201909%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl201886201916%_))
                                  ((lambda (_%L201919%_)
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
                     (cons '() (cons _%L201919%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd201885201913%_)
                                  (_%g201878201892%_ _%g201879201896%_))))
                          (_%g201878201892%_ _%g201879201896%_))))
                  (_%g201878201892%_ _%g201879201896%_)))))
      (_%g201877201934%_ _%$stx201874%_))))
