(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx212791%_)
    (let* ((_%g212795212809%_
            (lambda (_%g212796212805%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g212796212805%_))))
           (_%g212794212851%_
            (lambda (_%g212796212813%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g212796212813%_))
                  (let ((_%e212798212816%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g212796212813%_))))
                    (let ((_%hd212799212820%_
                           (let ()
                             (declare (not safe))
                             (##car _%e212798212816%_)))
                          (_%tl212800212823%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e212798212816%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl212800212823%_))
                          (let ((_%e212801212826%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl212800212823%_))))
                            (let ((_%hd212802212830%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e212801212826%_)))
                                  (_%tl212803212833%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e212801212826%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl212803212833%_))
                                  ((lambda (_%g212797212836%_)
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
                     (cons '() (cons _%g212797212836%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd212802212830%_)
                                  (_%g212795212809%_ _%g212796212813%_))))
                          (_%g212795212809%_ _%g212796212813%_))))
                  (_%g212795212809%_ _%g212796212813%_)))))
      (_%g212794212851%_ _%$stx212791%_))))
