(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx226812%_)
    (let* ((_%$%g226816226830%_
            (lambda (_%$%g226817226826%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _%$%g226817226826%_)))
           (_%$%g226815226872%_
            (lambda (_%$%g226817226834%_)
              (if (gx#stx-pair? _%$%g226817226834%_)
                  (let ((_%$%e226819226837%_
                         (gx#syntax-e _%$%g226817226834%_)))
                    (let ((_%$%hd226820226841%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e226819226837%_)))
                          (_%$%tl226821226844%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e226819226837%_))))
                      (if (gx#stx-pair? _%$%tl226821226844%_)
                          (let ((_%$%e226822226847%_
                                 (gx#syntax-e _%$%tl226821226844%_)))
                            (let ((_%$%hd226823226851%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e226822226847%_)))
                                  (_%$%tl226824226854%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e226822226847%_))))
                              (if (gx#stx-null? _%$%tl226824226854%_)
                                  ((lambda (_%$%g226818226857%_)
                                     (cons (gx#datum->syntax '#f 'with-lock)
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  '+driver-mutex+)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%$%g226818226857%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%$%hd226823226851%_)
                                  (_%$%g226816226830%_ _%$%g226817226834%_))))
                          (_%$%g226816226830%_ _%$%g226817226834%_))))
                  (_%$%g226816226830%_ _%$%g226817226834%_)))))
      (_%$%g226815226872%_ _%$stx226812%_))))
