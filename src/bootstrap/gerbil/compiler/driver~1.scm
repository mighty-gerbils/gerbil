(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx440712%_)
    (let* ((_%g440716440730%_
            (lambda (_%g440717440726%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g440717440726%_))))
           (_%g440715440772%_
            (lambda (_%g440717440734%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g440717440734%_))
                  (let ((_%e440719440737%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g440717440734%_))))
                    (let ((_%hd440720440741%_
                           (let ()
                             (declare (not safe))
                             (##car _%e440719440737%_)))
                          (_%tl440721440744%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e440719440737%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl440721440744%_))
                          (let ((_%e440722440747%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl440721440744%_))))
                            (let ((_%hd440723440751%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e440722440747%_)))
                                  (_%tl440724440754%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e440722440747%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl440724440754%_))
                                  ((lambda (_%g440718440757%_)
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
                     (cons '() (cons _%g440718440757%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd440723440751%_)
                                  (_%g440716440730%_ _%g440717440734%_))))
                          (_%g440716440730%_ _%g440717440734%_))))
                  (_%g440716440730%_ _%g440717440734%_)))))
      (_%g440715440772%_ _%$stx440712%_))))
