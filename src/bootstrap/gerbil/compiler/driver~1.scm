(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx193534%_)
    (let* ((_%g193538193552%_
            (lambda (_%g193539193548%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g193539193548%_))))
           (_%g193537193594%_
            (lambda (_%g193539193556%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g193539193556%_))
                  (let ((_%e193541193559%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g193539193556%_))))
                    (let ((_%hd193542193563%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193541193559%_)))
                          (_%tl193543193566%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193541193559%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193543193566%_))
                          (let ((_%e193544193569%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl193543193566%_))))
                            (let ((_%hd193545193573%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193544193569%_)))
                                  (_%tl193546193576%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193544193569%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl193546193576%_))
                                  ((lambda (_%L193579%_)
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
                     (cons '() (cons _%L193579%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd193545193573%_)
                                  (_%g193538193552%_ _%g193539193556%_))))
                          (_%g193538193552%_ _%g193539193556%_))))
                  (_%g193538193552%_ _%g193539193556%_)))))
      (_%g193537193594%_ _%$stx193534%_))))
