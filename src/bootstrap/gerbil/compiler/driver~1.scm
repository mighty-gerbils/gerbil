(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_%$stx194497%_)
      (let* ((_%g194501194515%_
              (lambda (_%g194502194511%_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g194502194511%_))))
             (_%g194500194557%_
              (lambda (_%g194502194519%_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%g194502194519%_))
                    (let ((_%e194506194522%_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g194502194519%_))))
                      (let ((_%hd194505194526%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194506194522%_)))
                            (_%tl194504194529%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194506194522%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl194504194529%_))
                            (let ((_%e194509194532%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl194504194529%_))))
                              (let ((_%hd194508194536%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e194509194532%_)))
                                    (_%tl194507194539%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e194509194532%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl194507194539%_))
                                    ((lambda (_%L194542%_)
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
                       (cons '() (cons _%L194542%_ '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd194508194536%_)
                                    (_%g194501194515%_ _%g194502194519%_))))
                            (_%g194501194515%_ _%g194502194519%_))))
                    (_%g194501194515%_ _%g194502194519%_)))))
        (_%g194500194557%_ _%$stx194497%_))))
  (define |gxc[:0:]#go!|
    (lambda (_%$stx194561%_)
      (let* ((_%g194565194579%_
              (lambda (_%g194566194575%_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g194566194575%_))))
             (_%g194564194620%_
              (lambda (_%g194566194583%_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%g194566194583%_))
                    (let ((_%e194570194586%_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g194566194583%_))))
                      (let ((_%hd194569194590%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194570194586%_)))
                            (_%tl194568194593%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194570194586%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl194568194593%_))
                            (let ((_%e194573194596%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl194568194593%_))))
                              (let ((_%hd194572194600%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e194573194596%_)))
                                    (_%tl194571194603%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e194573194596%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl194571194603%_))
                                    ((lambda (_%L194606%_)
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
                                                               (cons _%L194606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd194572194600%_)
                                    (_%g194565194579%_ _%g194566194583%_))))
                            (_%g194565194579%_ _%g194566194583%_))))
                    (_%g194565194579%_ _%g194566194583%_)))))
        (_%g194564194620%_ _%$stx194561%_)))))
