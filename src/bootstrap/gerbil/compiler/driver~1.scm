(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx257890%_)
    (let* ((_%g257894257908%_
            (lambda (_%g257895257904%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g257895257904%_))))
           (_%g257893257950%_
            (lambda (_%g257895257912%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g257895257912%_))
                  (let ((_%e257897257915%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g257895257912%_))))
                    (let ((_%hd257898257919%_
                           (let ()
                             (declare (not safe))
                             (##car _%e257897257915%_)))
                          (_%tl257899257922%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e257897257915%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl257899257922%_))
                          (let ((_%e257900257925%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl257899257922%_))))
                            (let ((_%hd257901257929%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e257900257925%_)))
                                  (_%tl257902257932%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e257900257925%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl257902257932%_))
                                  ((lambda (_%g257896257935%_)
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
                     (cons '() (cons _%g257896257935%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd257901257929%_)
                                  (_%g257894257908%_ _%g257895257912%_))))
                          (_%g257894257908%_ _%g257895257912%_))))
                  (_%g257894257908%_ _%g257895257912%_)))))
      (_%g257893257950%_ _%$stx257890%_))))
