(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx255992%_)
    (let* ((_%g255996256010%_
            (lambda (_%g255997256006%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g255997256006%_))))
           (_%g255995256052%_
            (lambda (_%g255997256014%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g255997256014%_))
                  (let ((_%e255999256017%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g255997256014%_))))
                    (let ((_%hd256000256021%_
                           (let ()
                             (declare (not safe))
                             (##car _%e255999256017%_)))
                          (_%tl256001256024%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e255999256017%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl256001256024%_))
                          (let ((_%e256002256027%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl256001256024%_))))
                            (let ((_%hd256003256031%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e256002256027%_)))
                                  (_%tl256004256034%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e256002256027%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl256004256034%_))
                                  ((lambda (_%g255998256037%_)
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
                     (cons '() (cons _%g255998256037%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd256003256031%_)
                                  (_%g255996256010%_ _%g255997256014%_))))
                          (_%g255996256010%_ _%g255997256014%_))))
                  (_%g255996256010%_ _%g255997256014%_)))))
      (_%g255995256052%_ _%$stx255992%_))))
