(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_%$stx193021%_)
      (let* ((_%g193025193039%_
              (lambda (_%g193026193035%_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g193026193035%_))))
             (_%g193024193081%_
              (lambda (_%g193026193043%_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%g193026193043%_))
                    (let ((_%e193030193046%_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g193026193043%_))))
                      (let ((_%hd193029193050%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193030193046%_)))
                            (_%tl193028193053%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193030193046%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl193028193053%_))
                            (let ((_%e193033193056%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl193028193053%_))))
                              (let ((_%hd193032193060%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193033193056%_)))
                                    (_%tl193031193063%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193033193056%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl193031193063%_))
                                    ((lambda (_%L193066%_)
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
                       (cons '() (cons _%L193066%_ '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd193032193060%_)
                                    (_%g193025193039%_ _%g193026193043%_))))
                            (_%g193025193039%_ _%g193026193043%_))))
                    (_%g193025193039%_ _%g193026193043%_)))))
        (_%g193024193081%_ _%$stx193021%_))))
  (define |gxc[:0:]#go!|
    (lambda (_%$stx193085%_)
      (let* ((_%g193089193103%_
              (lambda (_%g193090193099%_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g193090193099%_))))
             (_%g193088193144%_
              (lambda (_%g193090193107%_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%g193090193107%_))
                    (let ((_%e193094193110%_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g193090193107%_))))
                      (let ((_%hd193093193114%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193094193110%_)))
                            (_%tl193092193117%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193094193110%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl193092193117%_))
                            (let ((_%e193097193120%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl193092193117%_))))
                              (let ((_%hd193096193124%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193097193120%_)))
                                    (_%tl193095193127%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193097193120%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl193095193127%_))
                                    ((lambda (_%L193130%_)
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
                                                               (cons _%L193130%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd193096193124%_)
                                    (_%g193089193103%_ _%g193090193107%_))))
                            (_%g193089193103%_ _%g193090193107%_))))
                    (_%g193089193103%_ _%g193090193107%_)))))
        (_%g193088193144%_ _%$stx193085%_)))))
