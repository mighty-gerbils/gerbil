(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx201965%_)
    (let* ((_%g201969201983%_
            (lambda (_%g201970201979%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g201970201979%_))))
           (_%g201968202025%_
            (lambda (_%g201970201987%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g201970201987%_))
                  (let ((_%e201972201990%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g201970201987%_))))
                    (let ((_%hd201973201994%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201972201990%_)))
                          (_%tl201974201997%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201972201990%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201974201997%_))
                          (let ((_%e201975202000%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl201974201997%_))))
                            (let ((_%hd201976202004%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201975202000%_)))
                                  (_%tl201977202007%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201975202000%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl201977202007%_))
                                  ((lambda (_%L202010%_)
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
                     (cons '() (cons _%L202010%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd201976202004%_)
                                  (_%g201969201983%_ _%g201970201987%_))))
                          (_%g201969201983%_ _%g201970201987%_))))
                  (_%g201969201983%_ _%g201970201987%_)))))
      (_%g201968202025%_ _%$stx201965%_))))
