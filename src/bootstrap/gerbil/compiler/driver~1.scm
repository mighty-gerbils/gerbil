(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_%$stx193398%_)
      (let* ((_%g193402193416%_
              (lambda (_%g193403193412%_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g193403193412%_))))
             (_%g193401193458%_
              (lambda (_%g193403193420%_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%g193403193420%_))
                    (let ((_%e193407193423%_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g193403193420%_))))
                      (let ((_%hd193406193427%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193407193423%_)))
                            (_%tl193405193430%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193407193423%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl193405193430%_))
                            (let ((_%e193410193433%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl193405193430%_))))
                              (let ((_%hd193409193437%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193410193433%_)))
                                    (_%tl193408193440%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193410193433%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl193408193440%_))
                                    ((lambda (_%L193443%_)
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
                       (cons '() (cons _%L193443%_ '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd193409193437%_)
                                    (_%g193402193416%_ _%g193403193420%_))))
                            (_%g193402193416%_ _%g193403193420%_))))
                    (_%g193402193416%_ _%g193403193420%_)))))
        (_%g193401193458%_ _%$stx193398%_))))
  (define |gxc[:0:]#go!|
    (lambda (_%$stx193462%_)
      (let* ((_%g193466193480%_
              (lambda (_%g193467193476%_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g193467193476%_))))
             (_%g193465193521%_
              (lambda (_%g193467193484%_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%g193467193484%_))
                    (let ((_%e193471193487%_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g193467193484%_))))
                      (let ((_%hd193470193491%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193471193487%_)))
                            (_%tl193469193494%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193471193487%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl193469193494%_))
                            (let ((_%e193474193497%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl193469193494%_))))
                              (let ((_%hd193473193501%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193474193497%_)))
                                    (_%tl193472193504%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193474193497%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl193472193504%_))
                                    ((lambda (_%L193507%_)
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
                                                               (cons _%L193507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd193473193501%_)
                                    (_%g193466193480%_ _%g193467193484%_))))
                            (_%g193466193480%_ _%g193467193484%_))))
                    (_%g193466193480%_ _%g193467193484%_)))))
        (_%g193465193521%_ _%$stx193462%_)))))
