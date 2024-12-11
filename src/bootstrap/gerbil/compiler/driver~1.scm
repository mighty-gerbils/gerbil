(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx200783%_)
    (let* ((_%g200787200801%_
            (lambda (_%g200788200797%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g200788200797%_))))
           (_%g200786200843%_
            (lambda (_%g200788200805%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g200788200805%_))
                  (let ((_%e200790200808%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g200788200805%_))))
                    (let ((_%hd200791200812%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200790200808%_)))
                          (_%tl200792200815%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200790200808%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200792200815%_))
                          (let ((_%e200793200818%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl200792200815%_))))
                            (let ((_%hd200794200822%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200793200818%_)))
                                  (_%tl200795200825%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200793200818%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200795200825%_))
                                  ((lambda (_%L200828%_)
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
                     (cons '() (cons _%L200828%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd200794200822%_)
                                  (_%g200787200801%_ _%g200788200805%_))))
                          (_%g200787200801%_ _%g200788200805%_))))
                  (_%g200787200801%_ _%g200788200805%_)))))
      (_%g200786200843%_ _%$stx200783%_))))
