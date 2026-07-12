(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx265606%_)
    (let* ((_%$%g265610265624%_
            (lambda (_%$%g265611265620%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g265611265620%_))))
           (_%$%g265609265666%_
            (lambda (_%$%g265611265628%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%$%g265611265628%_))
                  (let ((_%$%e265613265631%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%g265611265628%_))))
                    (let ((_%$%hd265614265635%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e265613265631%_)))
                          (_%$%tl265615265638%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e265613265631%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl265615265638%_))
                          (let ((_%$%e265616265641%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl265615265638%_))))
                            (let ((_%$%hd265617265645%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e265616265641%_)))
                                  (_%$%tl265618265648%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e265616265641%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl265618265648%_))
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
                                                                (cons _%$%hd265617265645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (_%$%g265610265624%_ _%$%g265611265628%_))))
                          (_%$%g265610265624%_ _%$%g265611265628%_))))
                  (_%$%g265610265624%_ _%$%g265611265628%_)))))
      (_%$%g265609265666%_ _%$stx265606%_))))
