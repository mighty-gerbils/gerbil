(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx209013%_)
    (let* ((_%g209017209031%_
            (lambda (_%g209018209027%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g209018209027%_))))
           (_%g209016209073%_
            (lambda (_%g209018209035%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g209018209035%_))
                  (let ((_%e209020209038%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g209018209035%_))))
                    (let ((_%hd209021209042%_
                           (let ()
                             (declare (not safe))
                             (##car _%e209020209038%_)))
                          (_%tl209022209045%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e209020209038%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl209022209045%_))
                          (let ((_%e209023209048%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl209022209045%_))))
                            (let ((_%hd209024209052%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e209023209048%_)))
                                  (_%tl209025209055%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e209023209048%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl209025209055%_))
                                  ((lambda (_%L209058%_)
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
                     (cons '() (cons _%L209058%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd209024209052%_)
                                  (_%g209017209031%_ _%g209018209035%_))))
                          (_%g209017209031%_ _%g209018209035%_))))
                  (_%g209017209031%_ _%g209018209035%_)))))
      (_%g209016209073%_ _%$stx209013%_))))
