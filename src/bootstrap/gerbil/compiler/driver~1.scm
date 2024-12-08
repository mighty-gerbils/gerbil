(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx200746%_)
    (let* ((_%g200750200764%_
            (lambda (_%g200751200760%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g200751200760%_))))
           (_%g200749200806%_
            (lambda (_%g200751200768%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g200751200768%_))
                  (let ((_%e200753200771%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g200751200768%_))))
                    (let ((_%hd200754200775%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200753200771%_)))
                          (_%tl200755200778%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200753200771%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200755200778%_))
                          (let ((_%e200756200781%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl200755200778%_))))
                            (let ((_%hd200757200785%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200756200781%_)))
                                  (_%tl200758200788%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200756200781%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200758200788%_))
                                  ((lambda (_%L200791%_)
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
                     (cons '() (cons _%L200791%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd200757200785%_)
                                  (_%g200750200764%_ _%g200751200768%_))))
                          (_%g200750200764%_ _%g200751200768%_))))
                  (_%g200750200764%_ _%g200751200768%_)))))
      (_%g200749200806%_ _%$stx200746%_))))
