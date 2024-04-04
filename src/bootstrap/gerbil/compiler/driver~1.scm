(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_%$stx194563%_)
      (let* ((_%g194567194581%_
              (lambda (_%g194568194577%_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g194568194577%_))))
             (_%g194566194623%_
              (lambda (_%g194568194585%_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%g194568194585%_))
                    (let ((_%e194572194588%_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g194568194585%_))))
                      (let ((_%hd194571194592%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194572194588%_)))
                            (_%tl194570194595%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194572194588%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl194570194595%_))
                            (let ((_%e194575194598%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl194570194595%_))))
                              (let ((_%hd194574194602%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e194575194598%_)))
                                    (_%tl194573194605%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e194575194598%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl194573194605%_))
                                    ((lambda (_%L194608%_)
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
                       (cons '() (cons _%L194608%_ '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd194574194602%_)
                                    (_%g194567194581%_ _%g194568194585%_))))
                            (_%g194567194581%_ _%g194568194585%_))))
                    (_%g194567194581%_ _%g194568194585%_)))))
        (_%g194566194623%_ _%$stx194563%_))))
  (define |gxc[:0:]#go!|
    (lambda (_%$stx194627%_)
      (let* ((_%g194631194645%_
              (lambda (_%g194632194641%_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g194632194641%_))))
             (_%g194630194686%_
              (lambda (_%g194632194649%_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%g194632194649%_))
                    (let ((_%e194636194652%_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g194632194649%_))))
                      (let ((_%hd194635194656%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194636194652%_)))
                            (_%tl194634194659%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194636194652%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl194634194659%_))
                            (let ((_%e194639194662%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl194634194659%_))))
                              (let ((_%hd194638194666%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e194639194662%_)))
                                    (_%tl194637194669%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e194639194662%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl194637194669%_))
                                    ((lambda (_%L194672%_)
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
                                                               (cons _%L194672%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd194638194666%_)
                                    (_%g194631194645%_ _%g194632194649%_))))
                            (_%g194631194645%_ _%g194632194649%_))))
                    (_%g194631194645%_ _%g194632194649%_)))))
        (_%g194630194686%_ _%$stx194627%_)))))
