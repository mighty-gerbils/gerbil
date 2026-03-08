(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx258944%_)
    (let* ((_%g258948258962%_
            (lambda (_%g258949258958%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g258949258958%_))))
           (_%g258947259004%_
            (lambda (_%g258949258966%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g258949258966%_))
                  (let ((_%e258951258969%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g258949258966%_))))
                    (let ((_%hd258952258973%_
                           (let ()
                             (declare (not safe))
                             (##car _%e258951258969%_)))
                          (_%tl258953258976%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e258951258969%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl258953258976%_))
                          (let ((_%e258954258979%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl258953258976%_))))
                            (let ((_%hd258955258983%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e258954258979%_)))
                                  (_%tl258956258986%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e258954258979%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl258956258986%_))
                                  ((lambda (_%g258950258989%_)
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
                     (cons '() (cons _%g258950258989%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd258955258983%_)
                                  (_%g258948258962%_ _%g258949258966%_))))
                          (_%g258948258962%_ _%g258949258966%_))))
                  (_%g258948258962%_ _%g258949258966%_)))))
      (_%g258947259004%_ _%$stx258944%_))))
