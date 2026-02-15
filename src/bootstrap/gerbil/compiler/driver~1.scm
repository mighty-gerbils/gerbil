(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx258370%_)
    (let* ((_%g258374258388%_
            (lambda (_%g258375258384%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g258375258384%_))))
           (_%g258373258430%_
            (lambda (_%g258375258392%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g258375258392%_))
                  (let ((_%e258377258395%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g258375258392%_))))
                    (let ((_%hd258378258399%_
                           (let ()
                             (declare (not safe))
                             (##car _%e258377258395%_)))
                          (_%tl258379258402%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e258377258395%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl258379258402%_))
                          (let ((_%e258380258405%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl258379258402%_))))
                            (let ((_%hd258381258409%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e258380258405%_)))
                                  (_%tl258382258412%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e258380258405%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl258382258412%_))
                                  ((lambda (_%g258376258415%_)
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
                     (cons '() (cons _%g258376258415%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd258381258409%_)
                                  (_%g258374258388%_ _%g258375258392%_))))
                          (_%g258374258388%_ _%g258375258392%_))))
                  (_%g258374258388%_ _%g258375258392%_)))))
      (_%g258373258430%_ _%$stx258370%_))))
