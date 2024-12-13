(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx200889%_)
    (let* ((_%g200893200907%_
            (lambda (_%g200894200903%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g200894200903%_))))
           (_%g200892200949%_
            (lambda (_%g200894200911%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g200894200911%_))
                  (let ((_%e200896200914%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g200894200911%_))))
                    (let ((_%hd200897200918%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200896200914%_)))
                          (_%tl200898200921%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200896200914%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200898200921%_))
                          (let ((_%e200899200924%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl200898200921%_))))
                            (let ((_%hd200900200928%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200899200924%_)))
                                  (_%tl200901200931%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200899200924%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200901200931%_))
                                  ((lambda (_%L200934%_)
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
                     (cons '() (cons _%L200934%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd200900200928%_)
                                  (_%g200893200907%_ _%g200894200911%_))))
                          (_%g200893200907%_ _%g200894200911%_))))
                  (_%g200893200907%_ _%g200894200911%_)))))
      (_%g200892200949%_ _%$stx200889%_))))
