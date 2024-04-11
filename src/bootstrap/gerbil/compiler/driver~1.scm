(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx195711%_)
    (let* ((_%g195715195729%_
            (lambda (_%g195716195725%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g195716195725%_))))
           (_%g195714195771%_
            (lambda (_%g195716195733%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g195716195733%_))
                  (let ((_%e195718195736%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g195716195733%_))))
                    (let ((_%hd195719195740%_
                           (let ()
                             (declare (not safe))
                             (##car _%e195718195736%_)))
                          (_%tl195720195743%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e195718195736%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl195720195743%_))
                          (let ((_%e195721195746%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl195720195743%_))))
                            (let ((_%hd195722195750%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195721195746%_)))
                                  (_%tl195723195753%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195721195746%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl195723195753%_))
                                  ((lambda (_%L195756%_)
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
                     (cons '() (cons _%L195756%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd195722195750%_)
                                  (_%g195715195729%_ _%g195716195733%_))))
                          (_%g195715195729%_ _%g195716195733%_))))
                  (_%g195715195729%_ _%g195716195733%_)))))
      (_%g195714195771%_ _%$stx195711%_))))
