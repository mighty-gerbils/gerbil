(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_%$stx192986%_)
      (let* ((_%g192990193004%_
              (lambda (_%g192991193000%_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g192991193000%_))))
             (_%g192989193046%_
              (lambda (_%g192991193008%_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%g192991193008%_))
                    (let ((_%e192995193011%_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g192991193008%_))))
                      (let ((_%hd192994193015%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192995193011%_)))
                            (_%tl192993193018%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192995193011%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl192993193018%_))
                            (let ((_%e192998193021%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl192993193018%_))))
                              (let ((_%hd192997193025%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e192998193021%_)))
                                    (_%tl192996193028%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e192998193021%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl192996193028%_))
                                    ((lambda (_%L193031%_)
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
                       (cons '() (cons _%L193031%_ '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd192997193025%_)
                                    (_%g192990193004%_ _%g192991193008%_))))
                            (_%g192990193004%_ _%g192991193008%_))))
                    (_%g192990193004%_ _%g192991193008%_)))))
        (_%g192989193046%_ _%$stx192986%_))))
  (define |gxc[:0:]#go!|
    (lambda (_%$stx193050%_)
      (let* ((_%g193054193068%_
              (lambda (_%g193055193064%_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g193055193064%_))))
             (_%g193053193109%_
              (lambda (_%g193055193072%_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%g193055193072%_))
                    (let ((_%e193059193075%_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g193055193072%_))))
                      (let ((_%hd193058193079%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193059193075%_)))
                            (_%tl193057193082%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193059193075%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl193057193082%_))
                            (let ((_%e193062193085%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl193057193082%_))))
                              (let ((_%hd193061193089%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193062193085%_)))
                                    (_%tl193060193092%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193062193085%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl193060193092%_))
                                    ((lambda (_%L193095%_)
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
                                                               (cons _%L193095%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd193061193089%_)
                                    (_%g193054193068%_ _%g193055193072%_))))
                            (_%g193054193068%_ _%g193055193072%_))))
                    (_%g193054193068%_ _%g193055193072%_)))))
        (_%g193053193109%_ _%$stx193050%_)))))
