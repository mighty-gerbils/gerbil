(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx200991%_)
    (let* ((_%g200995201009%_
            (lambda (_%g200996201005%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g200996201005%_))))
           (_%g200994201051%_
            (lambda (_%g200996201013%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g200996201013%_))
                  (let ((_%e200998201016%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g200996201013%_))))
                    (let ((_%hd200999201020%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200998201016%_)))
                          (_%tl201000201023%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200998201016%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201000201023%_))
                          (let ((_%e201001201026%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl201000201023%_))))
                            (let ((_%hd201002201030%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201001201026%_)))
                                  (_%tl201003201033%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201001201026%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl201003201033%_))
                                  ((lambda (_%L201036%_)
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
                     (cons '() (cons _%L201036%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd201002201030%_)
                                  (_%g200995201009%_ _%g200996201013%_))))
                          (_%g200995201009%_ _%g200996201013%_))))
                  (_%g200995201009%_ _%g200996201013%_)))))
      (_%g200994201051%_ _%$stx200991%_))))
