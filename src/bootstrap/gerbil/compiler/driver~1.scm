(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx199455%_)
    (let* ((_%g199459199473%_
            (lambda (_%g199460199469%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g199460199469%_))))
           (_%g199458199515%_
            (lambda (_%g199460199477%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g199460199477%_))
                  (let ((_%e199462199480%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g199460199477%_))))
                    (let ((_%hd199463199484%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199462199480%_)))
                          (_%tl199464199487%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199462199480%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199464199487%_))
                          (let ((_%e199465199490%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl199464199487%_))))
                            (let ((_%hd199466199494%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199465199490%_)))
                                  (_%tl199467199497%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199465199490%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199467199497%_))
                                  ((lambda (_%L199500%_)
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
                     (cons '() (cons _%L199500%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd199466199494%_)
                                  (_%g199459199473%_ _%g199460199477%_))))
                          (_%g199459199473%_ _%g199460199477%_))))
                  (_%g199459199473%_ _%g199460199477%_)))))
      (_%g199458199515%_ _%$stx199455%_))))
