(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx193510%_)
    (let* ((_%g193514193528%_
            (lambda (_%g193515193524%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g193515193524%_))))
           (_%g193513193570%_
            (lambda (_%g193515193532%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g193515193532%_))
                  (let ((_%e193517193535%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g193515193532%_))))
                    (let ((_%hd193518193539%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193517193535%_)))
                          (_%tl193519193542%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193517193535%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193519193542%_))
                          (let ((_%e193520193545%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl193519193542%_))))
                            (let ((_%hd193521193549%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193520193545%_)))
                                  (_%tl193522193552%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193520193545%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl193522193552%_))
                                  ((lambda (_%L193555%_)
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
                     (cons '() (cons _%L193555%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd193521193549%_)
                                  (_%g193514193528%_ _%g193515193532%_))))
                          (_%g193514193528%_ _%g193515193532%_))))
                  (_%g193514193528%_ _%g193515193532%_)))))
      (_%g193513193570%_ _%$stx193510%_))))
