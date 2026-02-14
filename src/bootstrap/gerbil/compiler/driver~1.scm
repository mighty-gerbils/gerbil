(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx257894%_)
    (let* ((_%g257898257912%_
            (lambda (_%g257899257908%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g257899257908%_))))
           (_%g257897257954%_
            (lambda (_%g257899257916%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g257899257916%_))
                  (let ((_%e257901257919%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g257899257916%_))))
                    (let ((_%hd257902257923%_
                           (let ()
                             (declare (not safe))
                             (##car _%e257901257919%_)))
                          (_%tl257903257926%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e257901257919%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl257903257926%_))
                          (let ((_%e257904257929%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl257903257926%_))))
                            (let ((_%hd257905257933%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e257904257929%_)))
                                  (_%tl257906257936%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e257904257929%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl257906257936%_))
                                  ((lambda (_%g257900257939%_)
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
                     (cons '() (cons _%g257900257939%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd257905257933%_)
                                  (_%g257898257912%_ _%g257899257916%_))))
                          (_%g257898257912%_ _%g257899257916%_))))
                  (_%g257898257912%_ _%g257899257916%_)))))
      (_%g257897257954%_ _%$stx257894%_))))
