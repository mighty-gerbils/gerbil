(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx259371%_)
    (let* ((_%g259375259389%_
            (lambda (_%g259376259385%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g259376259385%_))))
           (_%g259374259431%_
            (lambda (_%g259376259393%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g259376259393%_))
                  (let ((_%e259378259396%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g259376259393%_))))
                    (let ((_%hd259379259400%_
                           (let ()
                             (declare (not safe))
                             (##car _%e259378259396%_)))
                          (_%tl259380259403%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e259378259396%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl259380259403%_))
                          (let ((_%e259381259406%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl259380259403%_))))
                            (let ((_%hd259382259410%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e259381259406%_)))
                                  (_%tl259383259413%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e259381259406%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl259383259413%_))
                                  ((lambda (_%g259377259416%_)
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
                     (cons '() (cons _%g259377259416%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd259382259410%_)
                                  (_%g259375259389%_ _%g259376259393%_))))
                          (_%g259375259389%_ _%g259376259393%_))))
                  (_%g259375259389%_ _%g259376259393%_)))))
      (_%g259374259431%_ _%$stx259371%_))))
