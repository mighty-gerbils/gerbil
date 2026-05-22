(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx260829%_)
    (let* ((_%g260833260847%_
            (lambda (_%g260834260843%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g260834260843%_))))
           (_%g260832260889%_
            (lambda (_%g260834260851%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g260834260851%_))
                  (let ((_%e260836260854%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g260834260851%_))))
                    (let ((_%hd260837260858%_
                           (let ()
                             (declare (not safe))
                             (##car _%e260836260854%_)))
                          (_%tl260838260861%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e260836260854%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl260838260861%_))
                          (let ((_%e260839260864%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl260838260861%_))))
                            (let ((_%hd260840260868%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e260839260864%_)))
                                  (_%tl260841260871%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e260839260864%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl260841260871%_))
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
                                                                (cons _%hd260840260868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (_%g260833260847%_ _%g260834260851%_))))
                          (_%g260833260847%_ _%g260834260851%_))))
                  (_%g260833260847%_ _%g260834260851%_)))))
      (_%g260832260889%_ _%$stx260829%_))))
