(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_%$stx193466%_)
      (let* ((_%g193470193484%_
              (lambda (_%g193471193480%_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g193471193480%_))))
             (_%g193469193526%_
              (lambda (_%g193471193488%_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%g193471193488%_))
                    (let ((_%e193475193491%_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g193471193488%_))))
                      (let ((_%hd193474193495%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193475193491%_)))
                            (_%tl193473193498%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193475193491%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl193473193498%_))
                            (let ((_%e193478193501%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl193473193498%_))))
                              (let ((_%hd193477193505%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193478193501%_)))
                                    (_%tl193476193508%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193478193501%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl193476193508%_))
                                    ((lambda (_%L193511%_)
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
                       (cons '() (cons _%L193511%_ '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd193477193505%_)
                                    (_%g193470193484%_ _%g193471193488%_))))
                            (_%g193470193484%_ _%g193471193488%_))))
                    (_%g193470193484%_ _%g193471193488%_)))))
        (_%g193469193526%_ _%$stx193466%_))))
  (define |gxc[:0:]#go!|
    (lambda (_%$stx193530%_)
      (let* ((_%g193534193548%_
              (lambda (_%g193535193544%_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g193535193544%_))))
             (_%g193533193589%_
              (lambda (_%g193535193552%_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%g193535193552%_))
                    (let ((_%e193539193555%_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g193535193552%_))))
                      (let ((_%hd193538193559%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193539193555%_)))
                            (_%tl193537193562%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193539193555%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl193537193562%_))
                            (let ((_%e193542193565%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl193537193562%_))))
                              (let ((_%hd193541193569%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193542193565%_)))
                                    (_%tl193540193572%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193542193565%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl193540193572%_))
                                    ((lambda (_%L193575%_)
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
                                                               (cons _%L193575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd193541193569%_)
                                    (_%g193534193548%_ _%g193535193552%_))))
                            (_%g193534193548%_ _%g193535193552%_))))
                    (_%g193534193548%_ _%g193535193552%_)))))
        (_%g193533193589%_ _%$stx193530%_)))))
