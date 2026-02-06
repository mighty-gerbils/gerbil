(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx254820%_)
    (let* ((_%g254824254838%_
            (lambda (_%g254825254834%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g254825254834%_))))
           (_%g254823254880%_
            (lambda (_%g254825254842%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g254825254842%_))
                  (let ((_%e254827254845%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g254825254842%_))))
                    (let ((_%hd254828254849%_
                           (let ()
                             (declare (not safe))
                             (##car _%e254827254845%_)))
                          (_%tl254829254852%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e254827254845%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl254829254852%_))
                          (let ((_%e254830254855%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl254829254852%_))))
                            (let ((_%hd254831254859%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e254830254855%_)))
                                  (_%tl254832254862%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e254830254855%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl254832254862%_))
                                  ((lambda (_%g254826254865%_)
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
                     (cons '() (cons _%g254826254865%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd254831254859%_)
                                  (_%g254824254838%_ _%g254825254842%_))))
                          (_%g254824254838%_ _%g254825254842%_))))
                  (_%g254824254838%_ _%g254825254842%_)))))
      (_%g254823254880%_ _%$stx254820%_))))
