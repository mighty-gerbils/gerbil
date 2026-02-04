(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx224175%_)
    (let* ((_%g224179224193%_
            (lambda (_%g224180224189%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g224180224189%_))))
           (_%g224178224235%_
            (lambda (_%g224180224197%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g224180224197%_))
                  (let ((_%e224182224200%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g224180224197%_))))
                    (let ((_%hd224183224204%_
                           (let ()
                             (declare (not safe))
                             (##car _%e224182224200%_)))
                          (_%tl224184224207%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e224182224200%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl224184224207%_))
                          (let ((_%e224185224210%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl224184224207%_))))
                            (let ((_%hd224186224214%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e224185224210%_)))
                                  (_%tl224187224217%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e224185224210%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl224187224217%_))
                                  ((lambda (_%g224181224220%_)
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
                     (cons '() (cons _%g224181224220%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd224186224214%_)
                                  (_%g224179224193%_ _%g224180224197%_))))
                          (_%g224179224193%_ _%g224180224197%_))))
                  (_%g224179224193%_ _%g224180224197%_)))))
      (_%g224178224235%_ _%$stx224175%_))))
