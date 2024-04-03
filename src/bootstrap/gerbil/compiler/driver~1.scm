(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_%$stx193086%_)
      (let* ((_%g193090193104%_
              (lambda (_%g193091193100%_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g193091193100%_))))
             (_%g193089193146%_
              (lambda (_%g193091193108%_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%g193091193108%_))
                    (let ((_%e193095193111%_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g193091193108%_))))
                      (let ((_%hd193094193115%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193095193111%_)))
                            (_%tl193093193118%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193095193111%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl193093193118%_))
                            (let ((_%e193098193121%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl193093193118%_))))
                              (let ((_%hd193097193125%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193098193121%_)))
                                    (_%tl193096193128%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193098193121%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl193096193128%_))
                                    ((lambda (_%L193131%_)
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
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'lambda))
                       (cons '() (cons _%L193131%_ '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd193097193125%_)
                                    (_%g193090193104%_ _%g193091193108%_))))
                            (_%g193090193104%_ _%g193091193108%_))))
                    (_%g193090193104%_ _%g193091193108%_)))))
        (_%g193089193146%_ _%$stx193086%_))))
  (define |gxc[:0:]#go!|
    (lambda (_%$stx193150%_)
      (let* ((_%g193154193168%_
              (lambda (_%g193155193164%_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g193155193164%_))))
             (_%g193153193209%_
              (lambda (_%g193155193172%_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%g193155193172%_))
                    (let ((_%e193159193175%_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g193155193172%_))))
                      (let ((_%hd193158193179%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193159193175%_)))
                            (_%tl193157193182%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193159193175%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl193157193182%_))
                            (let ((_%e193162193185%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl193157193182%_))))
                              (let ((_%hd193161193189%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193162193185%_)))
                                    (_%tl193160193192%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193162193185%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl193160193192%_))
                                    ((lambda (_%L193195%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'spawn))
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            'lambda))
                                                         (cons '()
                                                               (cons _%L193195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd193161193189%_)
                                    (_%g193154193168%_ _%g193155193172%_))))
                            (_%g193154193168%_ _%g193155193172%_))))
                    (_%g193154193168%_ _%g193155193172%_)))))
        (_%g193153193209%_ _%$stx193150%_)))))
