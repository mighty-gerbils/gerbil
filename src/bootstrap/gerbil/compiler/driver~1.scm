(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx212847%_)
    (let* ((_%g212851212865%_
            (lambda (_%g212852212861%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g212852212861%_))))
           (_%g212850212907%_
            (lambda (_%g212852212869%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g212852212869%_))
                  (let ((_%e212854212872%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g212852212869%_))))
                    (let ((_%hd212855212876%_
                           (let ()
                             (declare (not safe))
                             (##car _%e212854212872%_)))
                          (_%tl212856212879%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e212854212872%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl212856212879%_))
                          (let ((_%e212857212882%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl212856212879%_))))
                            (let ((_%hd212858212886%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e212857212882%_)))
                                  (_%tl212859212889%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e212857212882%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl212859212889%_))
                                  ((lambda (_%g212853212892%_)
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
                     (cons '() (cons _%g212853212892%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd212858212886%_)
                                  (_%g212851212865%_ _%g212852212869%_))))
                          (_%g212851212865%_ _%g212852212869%_))))
                  (_%g212851212865%_ _%g212852212869%_)))))
      (_%g212850212907%_ _%$stx212847%_))))
