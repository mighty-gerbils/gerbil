(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_%$stx194571%_)
      (let* ((_%g194575194589%_
              (lambda (_%g194576194585%_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g194576194585%_))))
             (_%g194574194631%_
              (lambda (_%g194576194593%_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%g194576194593%_))
                    (let ((_%e194580194596%_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g194576194593%_))))
                      (let ((_%hd194579194600%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194580194596%_)))
                            (_%tl194578194603%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194580194596%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl194578194603%_))
                            (let ((_%e194583194606%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl194578194603%_))))
                              (let ((_%hd194582194610%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e194583194606%_)))
                                    (_%tl194581194613%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e194583194606%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl194581194613%_))
                                    ((lambda (_%L194616%_)
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
                       (cons '() (cons _%L194616%_ '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd194582194610%_)
                                    (_%g194575194589%_ _%g194576194593%_))))
                            (_%g194575194589%_ _%g194576194593%_))))
                    (_%g194575194589%_ _%g194576194593%_)))))
        (_%g194574194631%_ _%$stx194571%_))))
  (define |gxc[:0:]#go!|
    (lambda (_%$stx194635%_)
      (let* ((_%g194639194653%_
              (lambda (_%g194640194649%_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g194640194649%_))))
             (_%g194638194694%_
              (lambda (_%g194640194657%_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%g194640194657%_))
                    (let ((_%e194644194660%_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g194640194657%_))))
                      (let ((_%hd194643194664%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194644194660%_)))
                            (_%tl194642194667%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194644194660%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl194642194667%_))
                            (let ((_%e194647194670%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl194642194667%_))))
                              (let ((_%hd194646194674%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e194647194670%_)))
                                    (_%tl194645194677%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e194647194670%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl194645194677%_))
                                    ((lambda (_%L194680%_)
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
                                                               (cons _%L194680%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd194646194674%_)
                                    (_%g194639194653%_ _%g194640194657%_))))
                            (_%g194639194653%_ _%g194640194657%_))))
                    (_%g194639194653%_ _%g194640194657%_)))))
        (_%g194638194694%_ _%$stx194635%_)))))
