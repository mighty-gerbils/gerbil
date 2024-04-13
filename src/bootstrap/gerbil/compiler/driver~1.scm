(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx199233%_)
    (let* ((_%g199237199251%_
            (lambda (_%g199238199247%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g199238199247%_))))
           (_%g199236199293%_
            (lambda (_%g199238199255%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g199238199255%_))
                  (let ((_%e199240199258%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g199238199255%_))))
                    (let ((_%hd199241199262%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199240199258%_)))
                          (_%tl199242199265%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199240199258%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199242199265%_))
                          (let ((_%e199243199268%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl199242199265%_))))
                            (let ((_%hd199244199272%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199243199268%_)))
                                  (_%tl199245199275%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199243199268%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199245199275%_))
                                  ((lambda (_%L199278%_)
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
                     (cons '() (cons _%L199278%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd199244199272%_)
                                  (_%g199237199251%_ _%g199238199255%_))))
                          (_%g199237199251%_ _%g199238199255%_))))
                  (_%g199237199251%_ _%g199238199255%_)))))
      (_%g199236199293%_ _%$stx199233%_))))
