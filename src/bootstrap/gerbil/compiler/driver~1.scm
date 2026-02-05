(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx224360%_)
    (let* ((_%g224364224378%_
            (lambda (_%g224365224374%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g224365224374%_))))
           (_%g224363224420%_
            (lambda (_%g224365224382%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g224365224382%_))
                  (let ((_%e224367224385%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g224365224382%_))))
                    (let ((_%hd224368224389%_
                           (let ()
                             (declare (not safe))
                             (##car _%e224367224385%_)))
                          (_%tl224369224392%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e224367224385%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl224369224392%_))
                          (let ((_%e224370224395%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl224369224392%_))))
                            (let ((_%hd224371224399%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e224370224395%_)))
                                  (_%tl224372224402%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e224370224395%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl224372224402%_))
                                  ((lambda (_%g224366224405%_)
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
                     (cons '() (cons _%g224366224405%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd224371224399%_)
                                  (_%g224364224378%_ _%g224365224382%_))))
                          (_%g224364224378%_ _%g224365224382%_))))
                  (_%g224364224378%_ _%g224365224382%_)))))
      (_%g224363224420%_ _%$stx224360%_))))
