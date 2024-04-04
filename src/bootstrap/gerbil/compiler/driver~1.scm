(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_%$stx194588%_)
      (let* ((_%g194592194606%_
              (lambda (_%g194593194602%_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g194593194602%_))))
             (_%g194591194648%_
              (lambda (_%g194593194610%_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%g194593194610%_))
                    (let ((_%e194597194613%_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g194593194610%_))))
                      (let ((_%hd194596194617%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194597194613%_)))
                            (_%tl194595194620%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194597194613%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl194595194620%_))
                            (let ((_%e194600194623%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl194595194620%_))))
                              (let ((_%hd194599194627%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e194600194623%_)))
                                    (_%tl194598194630%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e194600194623%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl194598194630%_))
                                    ((lambda (_%L194633%_)
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
                       (cons '() (cons _%L194633%_ '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd194599194627%_)
                                    (_%g194592194606%_ _%g194593194610%_))))
                            (_%g194592194606%_ _%g194593194610%_))))
                    (_%g194592194606%_ _%g194593194610%_)))))
        (_%g194591194648%_ _%$stx194588%_))))
  (define |gxc[:0:]#go!|
    (lambda (_%$stx194652%_)
      (let* ((_%g194656194670%_
              (lambda (_%g194657194666%_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g194657194666%_))))
             (_%g194655194711%_
              (lambda (_%g194657194674%_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%g194657194674%_))
                    (let ((_%e194661194677%_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g194657194674%_))))
                      (let ((_%hd194660194681%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194661194677%_)))
                            (_%tl194659194684%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194661194677%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl194659194684%_))
                            (let ((_%e194664194687%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl194659194684%_))))
                              (let ((_%hd194663194691%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e194664194687%_)))
                                    (_%tl194662194694%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e194664194687%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl194662194694%_))
                                    ((lambda (_%L194697%_)
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
                                                               (cons _%L194697%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd194663194691%_)
                                    (_%g194656194670%_ _%g194657194674%_))))
                            (_%g194656194670%_ _%g194657194674%_))))
                    (_%g194656194670%_ _%g194657194674%_)))))
        (_%g194655194711%_ _%$stx194652%_)))))
