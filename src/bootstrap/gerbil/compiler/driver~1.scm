(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx205367%_)
    (let* ((_%g205371205385%_
            (lambda (_%g205372205381%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g205372205381%_))))
           (_%g205370205427%_
            (lambda (_%g205372205389%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g205372205389%_))
                  (let ((_%e205374205392%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g205372205389%_))))
                    (let ((_%hd205375205396%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205374205392%_)))
                          (_%tl205376205399%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205374205392%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl205376205399%_))
                          (let ((_%e205377205402%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl205376205399%_))))
                            (let ((_%hd205378205406%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e205377205402%_)))
                                  (_%tl205379205409%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e205377205402%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl205379205409%_))
                                  ((lambda (_%L205412%_)
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
                     (cons '() (cons _%L205412%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd205378205406%_)
                                  (_%g205371205385%_ _%g205372205389%_))))
                          (_%g205371205385%_ _%g205372205389%_))))
                  (_%g205371205385%_ _%g205372205389%_)))))
      (_%g205370205427%_ _%$stx205367%_))))
