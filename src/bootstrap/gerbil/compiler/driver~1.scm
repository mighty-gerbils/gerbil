(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx257300%_)
    (let* ((_%g257304257318%_
            (lambda (_%g257305257314%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g257305257314%_))))
           (_%g257303257360%_
            (lambda (_%g257305257322%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g257305257322%_))
                  (let ((_%e257307257325%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g257305257322%_))))
                    (let ((_%hd257308257329%_
                           (let ()
                             (declare (not safe))
                             (##car _%e257307257325%_)))
                          (_%tl257309257332%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e257307257325%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl257309257332%_))
                          (let ((_%e257310257335%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl257309257332%_))))
                            (let ((_%hd257311257339%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e257310257335%_)))
                                  (_%tl257312257342%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e257310257335%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl257312257342%_))
                                  ((lambda (_%g257306257345%_)
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
                     (cons '() (cons _%g257306257345%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd257311257339%_)
                                  (_%g257304257318%_ _%g257305257322%_))))
                          (_%g257304257318%_ _%g257305257322%_))))
                  (_%g257304257318%_ _%g257305257322%_)))))
      (_%g257303257360%_ _%$stx257300%_))))
