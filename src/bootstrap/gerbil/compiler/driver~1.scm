(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx201775%_)
    (let* ((_%g201779201793%_
            (lambda (_%g201780201789%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g201780201789%_))))
           (_%g201778201835%_
            (lambda (_%g201780201797%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g201780201797%_))
                  (let ((_%e201782201800%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g201780201797%_))))
                    (let ((_%hd201783201804%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201782201800%_)))
                          (_%tl201784201807%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201782201800%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201784201807%_))
                          (let ((_%e201785201810%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl201784201807%_))))
                            (let ((_%hd201786201814%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201785201810%_)))
                                  (_%tl201787201817%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201785201810%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl201787201817%_))
                                  ((lambda (_%L201820%_)
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
                     (cons '() (cons _%L201820%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd201786201814%_)
                                  (_%g201779201793%_ _%g201780201797%_))))
                          (_%g201779201793%_ _%g201780201797%_))))
                  (_%g201779201793%_ _%g201780201797%_)))))
      (_%g201778201835%_ _%$stx201775%_))))
