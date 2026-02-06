(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx247361%_)
    (let* ((_%g247365247379%_
            (lambda (_%g247366247375%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g247366247375%_))))
           (_%g247364247421%_
            (lambda (_%g247366247383%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g247366247383%_))
                  (let ((_%e247368247386%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g247366247383%_))))
                    (let ((_%hd247369247390%_
                           (let ()
                             (declare (not safe))
                             (##car _%e247368247386%_)))
                          (_%tl247370247393%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e247368247386%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl247370247393%_))
                          (let ((_%e247371247396%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl247370247393%_))))
                            (let ((_%hd247372247400%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e247371247396%_)))
                                  (_%tl247373247403%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e247371247396%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl247373247403%_))
                                  ((lambda (_%g247367247406%_)
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
                     (cons '() (cons _%g247367247406%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd247372247400%_)
                                  (_%g247365247379%_ _%g247366247383%_))))
                          (_%g247365247379%_ _%g247366247383%_))))
                  (_%g247365247379%_ _%g247366247383%_)))))
      (_%g247364247421%_ _%$stx247361%_))))
