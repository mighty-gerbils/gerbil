(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx207889%_)
    (let* ((_%g207893207907%_
            (lambda (_%g207894207903%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g207894207903%_))))
           (_%g207892207949%_
            (lambda (_%g207894207911%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g207894207911%_))
                  (let ((_%e207896207914%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g207894207911%_))))
                    (let ((_%hd207897207918%_
                           (let ()
                             (declare (not safe))
                             (##car _%e207896207914%_)))
                          (_%tl207898207921%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e207896207914%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl207898207921%_))
                          (let ((_%e207899207924%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl207898207921%_))))
                            (let ((_%hd207900207928%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e207899207924%_)))
                                  (_%tl207901207931%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e207899207924%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl207901207931%_))
                                  ((lambda (_%L207934%_)
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
                     (cons '() (cons _%L207934%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd207900207928%_)
                                  (_%g207893207907%_ _%g207894207911%_))))
                          (_%g207893207907%_ _%g207894207911%_))))
                  (_%g207893207907%_ _%g207894207911%_)))))
      (_%g207892207949%_ _%$stx207889%_))))
