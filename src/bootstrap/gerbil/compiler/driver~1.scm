(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx224381%_)
    (let* ((_%g224385224399%_
            (lambda (_%g224386224395%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g224386224395%_))))
           (_%g224384224441%_
            (lambda (_%g224386224403%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g224386224403%_))
                  (let ((_%e224388224406%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g224386224403%_))))
                    (let ((_%hd224389224410%_
                           (let ()
                             (declare (not safe))
                             (##car _%e224388224406%_)))
                          (_%tl224390224413%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e224388224406%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl224390224413%_))
                          (let ((_%e224391224416%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl224390224413%_))))
                            (let ((_%hd224392224420%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e224391224416%_)))
                                  (_%tl224393224423%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e224391224416%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl224393224423%_))
                                  ((lambda (_%g224387224426%_)
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
                     (cons '() (cons _%g224387224426%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd224392224420%_)
                                  (_%g224385224399%_ _%g224386224403%_))))
                          (_%g224385224399%_ _%g224386224403%_))))
                  (_%g224385224399%_ _%g224386224403%_)))))
      (_%g224384224441%_ _%$stx224381%_))))
