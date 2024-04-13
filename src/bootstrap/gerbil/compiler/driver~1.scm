(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx198705%_)
    (let* ((_%g198709198723%_
            (lambda (_%g198710198719%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g198710198719%_))))
           (_%g198708198765%_
            (lambda (_%g198710198727%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g198710198727%_))
                  (let ((_%e198712198730%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g198710198727%_))))
                    (let ((_%hd198713198734%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198712198730%_)))
                          (_%tl198714198737%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198712198730%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198714198737%_))
                          (let ((_%e198715198740%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl198714198737%_))))
                            (let ((_%hd198716198744%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198715198740%_)))
                                  (_%tl198717198747%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198715198740%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198717198747%_))
                                  ((lambda (_%L198750%_)
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
                     (cons '() (cons _%L198750%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd198716198744%_)
                                  (_%g198709198723%_ _%g198710198727%_))))
                          (_%g198709198723%_ _%g198710198727%_))))
                  (_%g198709198723%_ _%g198710198727%_)))))
      (_%g198708198765%_ _%$stx198705%_))))
