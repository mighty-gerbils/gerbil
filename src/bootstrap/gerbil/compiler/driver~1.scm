(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx193571%_)
    (let* ((_%g193575193589%_
            (lambda (_%g193576193585%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g193576193585%_))))
           (_%g193574193631%_
            (lambda (_%g193576193593%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g193576193593%_))
                  (let ((_%e193578193596%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g193576193593%_))))
                    (let ((_%hd193579193600%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193578193596%_)))
                          (_%tl193580193603%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193578193596%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193580193603%_))
                          (let ((_%e193581193606%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl193580193603%_))))
                            (let ((_%hd193582193610%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193581193606%_)))
                                  (_%tl193583193613%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193581193606%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl193583193613%_))
                                  ((lambda (_%L193616%_)
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
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'lambda))
                     (cons '() (cons _%L193616%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd193582193610%_)
                                  (_%g193575193589%_ _%g193576193593%_))))
                          (_%g193575193589%_ _%g193576193593%_))))
                  (_%g193575193589%_ _%g193576193593%_)))))
      (_%g193574193631%_ _%$stx193571%_))))
