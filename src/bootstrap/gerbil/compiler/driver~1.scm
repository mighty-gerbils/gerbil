(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx258421%_)
    (let* ((_%g258425258439%_
            (lambda (_%g258426258435%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g258426258435%_))))
           (_%g258424258481%_
            (lambda (_%g258426258443%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g258426258443%_))
                  (let ((_%e258428258446%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g258426258443%_))))
                    (let ((_%hd258429258450%_
                           (let ()
                             (declare (not safe))
                             (##car _%e258428258446%_)))
                          (_%tl258430258453%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e258428258446%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl258430258453%_))
                          (let ((_%e258431258456%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl258430258453%_))))
                            (let ((_%hd258432258460%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e258431258456%_)))
                                  (_%tl258433258463%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e258431258456%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl258433258463%_))
                                  ((lambda (_%g258427258466%_)
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
                     (cons '() (cons _%g258427258466%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd258432258460%_)
                                  (_%g258425258439%_ _%g258426258443%_))))
                          (_%g258425258439%_ _%g258426258443%_))))
                  (_%g258425258439%_ _%g258426258443%_)))))
      (_%g258424258481%_ _%$stx258421%_))))
