(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx194746%_)
    (let* ((_%g194750194764%_
            (lambda (_%g194751194760%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g194751194760%_))))
           (_%g194749194806%_
            (lambda (_%g194751194768%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g194751194768%_))
                  (let ((_%e194755194771%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g194751194768%_))))
                    (let ((_%hd194754194775%_
                           (let ()
                             (declare (not safe))
                             (##car _%e194755194771%_)))
                          (_%tl194753194778%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e194755194771%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl194753194778%_))
                          (let ((_%e194758194781%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl194753194778%_))))
                            (let ((_%hd194757194785%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194758194781%_)))
                                  (_%tl194756194788%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194758194781%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl194756194788%_))
                                  ((lambda (_%L194791%_)
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
                     (cons '() (cons _%L194791%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd194757194785%_)
                                  (_%g194750194764%_ _%g194751194768%_))))
                          (_%g194750194764%_ _%g194751194768%_))))
                  (_%g194750194764%_ _%g194751194768%_)))))
      (_%g194749194806%_ _%$stx194746%_))))
