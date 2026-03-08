(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx258954%_)
    (let* ((_%g258958258972%_
            (lambda (_%g258959258968%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g258959258968%_))))
           (_%g258957259014%_
            (lambda (_%g258959258976%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g258959258976%_))
                  (let ((_%e258961258979%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g258959258976%_))))
                    (let ((_%hd258962258983%_
                           (let ()
                             (declare (not safe))
                             (##car _%e258961258979%_)))
                          (_%tl258963258986%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e258961258979%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl258963258986%_))
                          (let ((_%e258964258989%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl258963258986%_))))
                            (let ((_%hd258965258993%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e258964258989%_)))
                                  (_%tl258966258996%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e258964258989%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl258966258996%_))
                                  ((lambda (_%g258960258999%_)
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
                     (cons '() (cons _%g258960258999%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd258965258993%_)
                                  (_%g258958258972%_ _%g258959258976%_))))
                          (_%g258958258972%_ _%g258959258976%_))))
                  (_%g258958258972%_ _%g258959258976%_)))))
      (_%g258957259014%_ _%$stx258954%_))))
