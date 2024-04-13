(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx198835%_)
    (let* ((_%g198839198853%_
            (lambda (_%g198840198849%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g198840198849%_))))
           (_%g198838198895%_
            (lambda (_%g198840198857%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g198840198857%_))
                  (let ((_%e198842198860%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g198840198857%_))))
                    (let ((_%hd198843198864%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198842198860%_)))
                          (_%tl198844198867%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198842198860%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198844198867%_))
                          (let ((_%e198845198870%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl198844198867%_))))
                            (let ((_%hd198846198874%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198845198870%_)))
                                  (_%tl198847198877%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198845198870%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198847198877%_))
                                  ((lambda (_%L198880%_)
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
                     (cons '() (cons _%L198880%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd198846198874%_)
                                  (_%g198839198853%_ _%g198840198857%_))))
                          (_%g198839198853%_ _%g198840198857%_))))
                  (_%g198839198853%_ _%g198840198857%_)))))
      (_%g198838198895%_ _%$stx198835%_))))
