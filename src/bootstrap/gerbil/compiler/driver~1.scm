(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx224219%_)
    (let* ((_%g224223224237%_
            (lambda (_%g224224224233%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g224224224233%_))))
           (_%g224222224279%_
            (lambda (_%g224224224241%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g224224224241%_))
                  (let ((_%e224226224244%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g224224224241%_))))
                    (let ((_%hd224227224248%_
                           (let ()
                             (declare (not safe))
                             (##car _%e224226224244%_)))
                          (_%tl224228224251%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e224226224244%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl224228224251%_))
                          (let ((_%e224229224254%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl224228224251%_))))
                            (let ((_%hd224230224258%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e224229224254%_)))
                                  (_%tl224231224261%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e224229224254%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl224231224261%_))
                                  ((lambda (_%g224225224264%_)
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
                     (cons '() (cons _%g224225224264%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd224230224258%_)
                                  (_%g224223224237%_ _%g224224224241%_))))
                          (_%g224223224237%_ _%g224224224241%_))))
                  (_%g224223224237%_ _%g224224224241%_)))))
      (_%g224222224279%_ _%$stx224219%_))))
