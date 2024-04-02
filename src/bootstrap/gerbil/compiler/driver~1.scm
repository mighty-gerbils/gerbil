(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_%$stx193075%_)
      (let* ((_%g193079193093%_
              (lambda (_%g193080193089%_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g193080193089%_))))
             (_%g193078193135%_
              (lambda (_%g193080193097%_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%g193080193097%_))
                    (let ((_%e193084193100%_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g193080193097%_))))
                      (let ((_%hd193083193104%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193084193100%_)))
                            (_%tl193082193107%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193084193100%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl193082193107%_))
                            (let ((_%e193087193110%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl193082193107%_))))
                              (let ((_%hd193086193114%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193087193110%_)))
                                    (_%tl193085193117%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193087193110%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl193085193117%_))
                                    ((lambda (_%L193120%_)
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
                       (cons '() (cons _%L193120%_ '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd193086193114%_)
                                    (_%g193079193093%_ _%g193080193097%_))))
                            (_%g193079193093%_ _%g193080193097%_))))
                    (_%g193079193093%_ _%g193080193097%_)))))
        (_%g193078193135%_ _%$stx193075%_))))
  (define |gxc[:0:]#go!|
    (lambda (_%$stx193139%_)
      (let* ((_%g193143193157%_
              (lambda (_%g193144193153%_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g193144193153%_))))
             (_%g193142193198%_
              (lambda (_%g193144193161%_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%g193144193161%_))
                    (let ((_%e193148193164%_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g193144193161%_))))
                      (let ((_%hd193147193168%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193148193164%_)))
                            (_%tl193146193171%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193148193164%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl193146193171%_))
                            (let ((_%e193151193174%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl193146193171%_))))
                              (let ((_%hd193150193178%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193151193174%_)))
                                    (_%tl193149193181%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193151193174%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl193149193181%_))
                                    ((lambda (_%L193184%_)
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
                                                               (cons _%L193184%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd193150193178%_)
                                    (_%g193143193157%_ _%g193144193161%_))))
                            (_%g193143193157%_ _%g193144193161%_))))
                    (_%g193143193157%_ _%g193144193161%_)))))
        (_%g193142193198%_ _%$stx193139%_)))))
