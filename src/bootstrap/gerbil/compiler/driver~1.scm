(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx224363%_)
    (let* ((_%g224367224381%_
            (lambda (_%g224368224377%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g224368224377%_))))
           (_%g224366224423%_
            (lambda (_%g224368224385%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g224368224385%_))
                  (let ((_%e224370224388%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g224368224385%_))))
                    (let ((_%hd224371224392%_
                           (let ()
                             (declare (not safe))
                             (##car _%e224370224388%_)))
                          (_%tl224372224395%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e224370224388%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl224372224395%_))
                          (let ((_%e224373224398%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl224372224395%_))))
                            (let ((_%hd224374224402%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e224373224398%_)))
                                  (_%tl224375224405%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e224373224398%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl224375224405%_))
                                  ((lambda (_%g224369224408%_)
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
                     (cons '() (cons _%g224369224408%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd224374224402%_)
                                  (_%g224367224381%_ _%g224368224385%_))))
                          (_%g224367224381%_ _%g224368224385%_))))
                  (_%g224367224381%_ _%g224368224385%_)))))
      (_%g224366224423%_ _%$stx224363%_))))
