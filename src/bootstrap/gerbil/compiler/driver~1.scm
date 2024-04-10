(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx193578%_)
    (let* ((_%g193582193596%_
            (lambda (_%g193583193592%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g193583193592%_))))
           (_%g193581193638%_
            (lambda (_%g193583193600%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g193583193600%_))
                  (let ((_%e193585193603%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g193583193600%_))))
                    (let ((_%hd193586193607%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193585193603%_)))
                          (_%tl193587193610%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193585193603%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193587193610%_))
                          (let ((_%e193588193613%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl193587193610%_))))
                            (let ((_%hd193589193617%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193588193613%_)))
                                  (_%tl193590193620%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193588193613%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl193590193620%_))
                                  ((lambda (_%L193623%_)
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
                     (cons '() (cons _%L193623%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd193589193617%_)
                                  (_%g193582193596%_ _%g193583193600%_))))
                          (_%g193582193596%_ _%g193583193600%_))))
                  (_%g193582193596%_ _%g193583193600%_)))))
      (_%g193581193638%_ _%$stx193578%_))))
