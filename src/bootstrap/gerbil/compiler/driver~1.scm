(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx257296%_)
    (let* ((_%g257300257314%_
            (lambda (_%g257301257310%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g257301257310%_))))
           (_%g257299257356%_
            (lambda (_%g257301257318%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g257301257318%_))
                  (let ((_%e257303257321%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g257301257318%_))))
                    (let ((_%hd257304257325%_
                           (let ()
                             (declare (not safe))
                             (##car _%e257303257321%_)))
                          (_%tl257305257328%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e257303257321%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl257305257328%_))
                          (let ((_%e257306257331%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl257305257328%_))))
                            (let ((_%hd257307257335%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e257306257331%_)))
                                  (_%tl257308257338%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e257306257331%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl257308257338%_))
                                  ((lambda (_%g257302257341%_)
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
                     (cons '() (cons _%g257302257341%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd257307257335%_)
                                  (_%g257300257314%_ _%g257301257318%_))))
                          (_%g257300257314%_ _%g257301257318%_))))
                  (_%g257300257314%_ _%g257301257318%_)))))
      (_%g257299257356%_ _%$stx257296%_))))
