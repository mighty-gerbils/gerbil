(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx260827%_)
    (let* ((_%g260831260845%_
            (lambda (_%g260832260841%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g260832260841%_))))
           (_%g260830260887%_
            (lambda (_%g260832260849%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g260832260849%_))
                  (let ((_%e260834260852%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g260832260849%_))))
                    (let ((_%hd260835260856%_
                           (let ()
                             (declare (not safe))
                             (##car _%e260834260852%_)))
                          (_%tl260836260859%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e260834260852%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl260836260859%_))
                          (let ((_%e260837260862%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl260836260859%_))))
                            (let ((_%hd260838260866%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e260837260862%_)))
                                  (_%tl260839260869%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e260837260862%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl260839260869%_))
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
                                                                (cons _%hd260838260866%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (_%g260831260845%_ _%g260832260849%_))))
                          (_%g260831260845%_ _%g260832260849%_))))
                  (_%g260831260845%_ _%g260832260849%_)))))
      (_%g260830260887%_ _%$stx260827%_))))
