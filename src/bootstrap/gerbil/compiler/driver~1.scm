(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx194970%_)
    (let* ((_%g194974194988%_
            (lambda (_%g194975194984%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g194975194984%_))))
           (_%g194973195030%_
            (lambda (_%g194975194992%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g194975194992%_))
                  (let ((_%e194977194995%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g194975194992%_))))
                    (let ((_%hd194978194999%_
                           (let ()
                             (declare (not safe))
                             (##car _%e194977194995%_)))
                          (_%tl194979195002%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e194977194995%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl194979195002%_))
                          (let ((_%e194980195005%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl194979195002%_))))
                            (let ((_%hd194981195009%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194980195005%_)))
                                  (_%tl194982195012%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194980195005%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl194982195012%_))
                                  ((lambda (_%L195015%_)
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
                     (cons '() (cons _%L195015%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd194981195009%_)
                                  (_%g194974194988%_ _%g194975194992%_))))
                          (_%g194974194988%_ _%g194975194992%_))))
                  (_%g194974194988%_ _%g194975194992%_)))))
      (_%g194973195030%_ _%$stx194970%_))))
