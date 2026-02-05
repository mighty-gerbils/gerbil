(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx224337%_)
    (let* ((_%g224341224355%_
            (lambda (_%g224342224351%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g224342224351%_))))
           (_%g224340224397%_
            (lambda (_%g224342224359%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g224342224359%_))
                  (let ((_%e224344224362%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g224342224359%_))))
                    (let ((_%hd224345224366%_
                           (let ()
                             (declare (not safe))
                             (##car _%e224344224362%_)))
                          (_%tl224346224369%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e224344224362%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl224346224369%_))
                          (let ((_%e224347224372%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl224346224369%_))))
                            (let ((_%hd224348224376%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e224347224372%_)))
                                  (_%tl224349224379%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e224347224372%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl224349224379%_))
                                  ((lambda (_%g224343224382%_)
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
                     (cons '() (cons _%g224343224382%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd224348224376%_)
                                  (_%g224341224355%_ _%g224342224359%_))))
                          (_%g224341224355%_ _%g224342224359%_))))
                  (_%g224341224355%_ _%g224342224359%_)))))
      (_%g224340224397%_ _%$stx224337%_))))
