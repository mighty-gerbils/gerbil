(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx193509%_)
    (let* ((_%g193513193527%_
            (lambda (_%g193514193523%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g193514193523%_))))
           (_%g193512193569%_
            (lambda (_%g193514193531%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g193514193531%_))
                  (let ((_%e193516193534%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g193514193531%_))))
                    (let ((_%hd193517193538%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193516193534%_)))
                          (_%tl193518193541%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193516193534%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193518193541%_))
                          (let ((_%e193519193544%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl193518193541%_))))
                            (let ((_%hd193520193548%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193519193544%_)))
                                  (_%tl193521193551%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193519193544%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl193521193551%_))
                                  ((lambda (_%L193554%_)
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
                     (cons '() (cons _%L193554%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd193520193548%_)
                                  (_%g193513193527%_ _%g193514193531%_))))
                          (_%g193513193527%_ _%g193514193531%_))))
                  (_%g193513193527%_ _%g193514193531%_)))))
      (_%g193512193569%_ _%$stx193509%_))))
