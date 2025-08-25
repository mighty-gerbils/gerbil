(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx209010%_)
    (let* ((_%g209014209028%_
            (lambda (_%g209015209024%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g209015209024%_))))
           (_%g209013209070%_
            (lambda (_%g209015209032%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g209015209032%_))
                  (let ((_%e209017209035%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g209015209032%_))))
                    (let ((_%hd209018209039%_
                           (let ()
                             (declare (not safe))
                             (##car _%e209017209035%_)))
                          (_%tl209019209042%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e209017209035%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl209019209042%_))
                          (let ((_%e209020209045%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl209019209042%_))))
                            (let ((_%hd209021209049%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e209020209045%_)))
                                  (_%tl209022209052%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e209020209045%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl209022209052%_))
                                  ((lambda (_%L209055%_)
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
                     (cons '() (cons _%L209055%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd209021209049%_)
                                  (_%g209014209028%_ _%g209015209032%_))))
                          (_%g209014209028%_ _%g209015209032%_))))
                  (_%g209014209028%_ _%g209015209032%_)))))
      (_%g209013209070%_ _%$stx209010%_))))
