(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx212718%_)
    (let* ((_%g212722212736%_
            (lambda (_%g212723212732%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g212723212732%_))))
           (_%g212721212778%_
            (lambda (_%g212723212740%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g212723212740%_))
                  (let ((_%e212725212743%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g212723212740%_))))
                    (let ((_%hd212726212747%_
                           (let ()
                             (declare (not safe))
                             (##car _%e212725212743%_)))
                          (_%tl212727212750%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e212725212743%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl212727212750%_))
                          (let ((_%e212728212753%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl212727212750%_))))
                            (let ((_%hd212729212757%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e212728212753%_)))
                                  (_%tl212730212760%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e212728212753%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl212730212760%_))
                                  ((lambda (_%L212763%_)
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
                     (cons '() (cons _%L212763%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd212729212757%_)
                                  (_%g212722212736%_ _%g212723212740%_))))
                          (_%g212722212736%_ _%g212723212740%_))))
                  (_%g212722212736%_ _%g212723212740%_)))))
      (_%g212721212778%_ _%$stx212718%_))))
