(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx266160%_)
    (let* ((_%$%g266164266178%_
            (lambda (_%$%g266165266174%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g266165266174%_))))
           (_%$%g266163266220%_
            (lambda (_%$%g266165266182%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%$%g266165266182%_))
                  (let ((_%$%e266167266185%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%g266165266182%_))))
                    (let ((_%$%hd266168266189%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e266167266185%_)))
                          (_%$%tl266169266192%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e266167266185%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl266169266192%_))
                          (let ((_%$%e266170266195%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl266169266192%_))))
                            (let ((_%$%hd266171266199%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e266170266195%_)))
                                  (_%$%tl266172266202%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e266170266195%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl266172266202%_))
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
                                                                (cons _%$%hd266171266199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (_%$%g266164266178%_ _%$%g266165266182%_))))
                          (_%$%g266164266178%_ _%$%g266165266182%_))))
                  (_%$%g266164266178%_ _%$%g266165266182%_)))))
      (_%$%g266163266220%_ _%$stx266160%_))))
