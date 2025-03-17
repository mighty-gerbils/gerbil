(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx201964%_)
    (let* ((_%g201968201982%_
            (lambda (_%g201969201978%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g201969201978%_))))
           (_%g201967202024%_
            (lambda (_%g201969201986%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g201969201986%_))
                  (let ((_%e201971201989%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g201969201986%_))))
                    (let ((_%hd201972201993%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201971201989%_)))
                          (_%tl201973201996%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201971201989%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201973201996%_))
                          (let ((_%e201974201999%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl201973201996%_))))
                            (let ((_%hd201975202003%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201974201999%_)))
                                  (_%tl201976202006%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201974201999%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl201976202006%_))
                                  ((lambda (_%L202009%_)
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
                     (cons '() (cons _%L202009%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd201975202003%_)
                                  (_%g201968201982%_ _%g201969201986%_))))
                          (_%g201968201982%_ _%g201969201986%_))))
                  (_%g201968201982%_ _%g201969201986%_)))))
      (_%g201967202024%_ _%$stx201964%_))))
