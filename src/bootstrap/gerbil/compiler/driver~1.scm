(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx261568%_)
    (let* ((_%$%g261572261586%_
            (lambda (_%$%g261573261582%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g261573261582%_))))
           (_%$%g261571261628%_
            (lambda (_%$%g261573261590%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%$%g261573261590%_))
                  (let ((_%$%e261575261593%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%g261573261590%_))))
                    (let ((_%$%hd261576261597%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e261575261593%_)))
                          (_%$%tl261577261600%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e261575261593%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl261577261600%_))
                          (let ((_%$%e261578261603%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl261577261600%_))))
                            (let ((_%$%hd261579261607%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e261578261603%_)))
                                  (_%$%tl261580261610%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e261578261603%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl261580261610%_))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'with-lock))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 '+driver-mutex+))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'lambda))
                                                          (cons '()
                                                                (cons _%$%hd261579261607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (_%$%g261572261586%_ _%$%g261573261590%_))))
                          (_%$%g261572261586%_ _%$%g261573261590%_))))
                  (_%$%g261572261586%_ _%$%g261573261590%_)))))
      (_%$%g261571261628%_ _%$stx261568%_))))
