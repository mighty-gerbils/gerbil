(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx201984%_)
    (let* ((_%g201988202002%_
            (lambda (_%g201989201998%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g201989201998%_))))
           (_%g201987202044%_
            (lambda (_%g201989202006%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g201989202006%_))
                  (let ((_%e201991202009%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g201989202006%_))))
                    (let ((_%hd201992202013%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201991202009%_)))
                          (_%tl201993202016%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201991202009%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201993202016%_))
                          (let ((_%e201994202019%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl201993202016%_))))
                            (let ((_%hd201995202023%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201994202019%_)))
                                  (_%tl201996202026%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201994202019%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl201996202026%_))
                                  ((lambda (_%L202029%_)
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
                     (cons '() (cons _%L202029%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd201995202023%_)
                                  (_%g201988202002%_ _%g201989202006%_))))
                          (_%g201988202002%_ _%g201989202006%_))))
                  (_%g201988202002%_ _%g201989202006%_)))))
      (_%g201987202044%_ _%$stx201984%_))))
