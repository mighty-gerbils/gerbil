(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx209430%_)
    (let* ((_%g209434209448%_
            (lambda (_%g209435209444%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g209435209444%_))))
           (_%g209433209490%_
            (lambda (_%g209435209452%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g209435209452%_))
                  (let ((_%e209437209455%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g209435209452%_))))
                    (let ((_%hd209438209459%_
                           (let ()
                             (declare (not safe))
                             (##car _%e209437209455%_)))
                          (_%tl209439209462%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e209437209455%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl209439209462%_))
                          (let ((_%e209440209465%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl209439209462%_))))
                            (let ((_%hd209441209469%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e209440209465%_)))
                                  (_%tl209442209472%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e209440209465%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl209442209472%_))
                                  ((lambda (_%L209475%_)
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
                     (cons '() (cons _%L209475%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd209441209469%_)
                                  (_%g209434209448%_ _%g209435209452%_))))
                          (_%g209434209448%_ _%g209435209452%_))))
                  (_%g209434209448%_ _%g209435209452%_)))))
      (_%g209433209490%_ _%$stx209430%_))))
