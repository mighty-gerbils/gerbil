(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx194533%_)
    (let* ((_%g194537194551%_
            (lambda (_%g194538194547%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g194538194547%_))))
           (_%g194536194593%_
            (lambda (_%g194538194555%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g194538194555%_))
                  (let ((_%e194540194558%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g194538194555%_))))
                    (let ((_%hd194541194562%_
                           (let ()
                             (declare (not safe))
                             (##car _%e194540194558%_)))
                          (_%tl194542194565%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e194540194558%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl194542194565%_))
                          (let ((_%e194543194568%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl194542194565%_))))
                            (let ((_%hd194544194572%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194543194568%_)))
                                  (_%tl194545194575%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194543194568%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl194545194575%_))
                                  ((lambda (_%L194578%_)
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
                     (cons '() (cons _%L194578%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd194544194572%_)
                                  (_%g194537194551%_ _%g194538194555%_))))
                          (_%g194537194551%_ _%g194538194555%_))))
                  (_%g194537194551%_ _%g194538194555%_)))))
      (_%g194536194593%_ _%$stx194533%_))))
