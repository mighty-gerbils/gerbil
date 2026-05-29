(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx261394%_)
    (let* ((_%g261398261412%_
            (lambda (_%g261399261408%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g261399261408%_))))
           (_%g261397261454%_
            (lambda (_%g261399261416%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g261399261416%_))
                  (let ((_%e261401261419%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g261399261416%_))))
                    (let ((_%hd261402261423%_
                           (let ()
                             (declare (not safe))
                             (##car _%e261401261419%_)))
                          (_%tl261403261426%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e261401261419%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl261403261426%_))
                          (let ((_%e261404261429%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl261403261426%_))))
                            (let ((_%hd261405261433%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e261404261429%_)))
                                  (_%tl261406261436%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e261404261429%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl261406261436%_))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'with-lock))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 '+driver-mutex+))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'lambda))
                                                          (cons '()
                                                                (cons _%hd261405261433%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (_%g261398261412%_ _%g261399261416%_))))
                          (_%g261398261412%_ _%g261399261416%_))))
                  (_%g261398261412%_ _%g261399261416%_)))))
      (_%g261397261454%_ _%$stx261394%_))))
