(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx254915%_)
    (let* ((_%g254919254933%_
            (lambda (_%g254920254929%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g254920254929%_))))
           (_%g254918254975%_
            (lambda (_%g254920254937%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g254920254937%_))
                  (let ((_%e254922254940%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g254920254937%_))))
                    (let ((_%hd254923254944%_
                           (let ()
                             (declare (not safe))
                             (##car _%e254922254940%_)))
                          (_%tl254924254947%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e254922254940%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl254924254947%_))
                          (let ((_%e254925254950%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl254924254947%_))))
                            (let ((_%hd254926254954%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e254925254950%_)))
                                  (_%tl254927254957%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e254925254950%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl254927254957%_))
                                  ((lambda (_%g254921254960%_)
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
                     (cons '() (cons _%g254921254960%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd254926254954%_)
                                  (_%g254919254933%_ _%g254920254937%_))))
                          (_%g254919254933%_ _%g254920254937%_))))
                  (_%g254919254933%_ _%g254920254937%_)))))
      (_%g254918254975%_ _%$stx254915%_))))
