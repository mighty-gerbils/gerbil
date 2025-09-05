(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx209428%_)
    (let* ((_%g209432209446%_
            (lambda (_%g209433209442%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g209433209442%_))))
           (_%g209431209488%_
            (lambda (_%g209433209450%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g209433209450%_))
                  (let ((_%e209435209453%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g209433209450%_))))
                    (let ((_%hd209436209457%_
                           (let ()
                             (declare (not safe))
                             (##car _%e209435209453%_)))
                          (_%tl209437209460%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e209435209453%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl209437209460%_))
                          (let ((_%e209438209463%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl209437209460%_))))
                            (let ((_%hd209439209467%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e209438209463%_)))
                                  (_%tl209440209470%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e209438209463%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl209440209470%_))
                                  ((lambda (_%L209473%_)
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
                     (cons '() (cons _%L209473%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd209439209467%_)
                                  (_%g209432209446%_ _%g209433209450%_))))
                          (_%g209432209446%_ _%g209433209450%_))))
                  (_%g209432209446%_ _%g209433209450%_)))))
      (_%g209431209488%_ _%$stx209428%_))))
