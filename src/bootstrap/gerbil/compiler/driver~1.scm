(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx199122%_)
    (let* ((_%g199126199140%_
            (lambda (_%g199127199136%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g199127199136%_))))
           (_%g199125199182%_
            (lambda (_%g199127199144%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g199127199144%_))
                  (let ((_%e199129199147%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g199127199144%_))))
                    (let ((_%hd199130199151%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199129199147%_)))
                          (_%tl199131199154%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199129199147%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199131199154%_))
                          (let ((_%e199132199157%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl199131199154%_))))
                            (let ((_%hd199133199161%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199132199157%_)))
                                  (_%tl199134199164%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199132199157%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199134199164%_))
                                  ((lambda (_%L199167%_)
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
                     (cons '() (cons _%L199167%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd199133199161%_)
                                  (_%g199126199140%_ _%g199127199144%_))))
                          (_%g199126199140%_ _%g199127199144%_))))
                  (_%g199126199140%_ _%g199127199144%_)))))
      (_%g199125199182%_ _%$stx199122%_))))
