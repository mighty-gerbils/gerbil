(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx224356%_)
    (let* ((_%g224360224374%_
            (lambda (_%g224361224370%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g224361224370%_))))
           (_%g224359224416%_
            (lambda (_%g224361224378%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g224361224378%_))
                  (let ((_%e224363224381%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g224361224378%_))))
                    (let ((_%hd224364224385%_
                           (let ()
                             (declare (not safe))
                             (##car _%e224363224381%_)))
                          (_%tl224365224388%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e224363224381%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl224365224388%_))
                          (let ((_%e224366224391%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl224365224388%_))))
                            (let ((_%hd224367224395%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e224366224391%_)))
                                  (_%tl224368224398%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e224366224391%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl224368224398%_))
                                  ((lambda (_%g224362224401%_)
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
                     (cons '() (cons _%g224362224401%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd224367224395%_)
                                  (_%g224360224374%_ _%g224361224378%_))))
                          (_%g224360224374%_ _%g224361224378%_))))
                  (_%g224360224374%_ _%g224361224378%_)))))
      (_%g224359224416%_ _%$stx224356%_))))
