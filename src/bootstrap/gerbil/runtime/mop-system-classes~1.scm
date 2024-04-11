(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g100194_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx99821%_)
      (let* ((_%g9982499862%_
              (lambda (_%g9982599858%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9982599858%_)))
             (_%g99823100031%_
              (lambda (_%g9982599866%_)
                (if (gx#stx-pair? _%g9982599866%_)
                    (let ((_%e9983099869%_ (gx#syntax-e _%g9982599866%_)))
                      (let ((_%hd9983199873%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9983099869%_)))
                            (_%tl9983299876%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9983099869%_))))
                        (if (gx#stx-pair? _%tl9983299876%_)
                            (let ((_%e9983399879%_
                                   (gx#syntax-e _%tl9983299876%_)))
                              (let ((_%hd9983499883%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9983399879%_)))
                                    (_%tl9983599886%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9983399879%_))))
                                (if (gx#stx-pair? _%hd9983499883%_)
                                    (let ((_%e9983699889%_
                                           (gx#syntax-e _%hd9983499883%_)))
                                      (let ((_%hd9983799893%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9983699889%_)))
                                            (_%tl9983899896%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9983699889%_))))
                                        (if (gx#stx-pair? _%tl9983899896%_)
                                            (let ((_%e9983999899%_
                                                   (gx#syntax-e
                                                    _%tl9983899896%_)))
                                              (let ((_%hd9984099903%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9983999899%_)))
                                                    (_%tl9984199906%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9983999899%_))))
                                                (if (gx#stx-null?
                                                     _%tl9984199906%_)
                                                    (if (gx#stx-pair?
                                                         _%tl9983599886%_)
                                                        (let ((_%e9984299909%_
                                                               (gx#syntax-e
                                                                _%tl9983599886%_)))
                                                          (let ((_%hd9984399913%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e9984299909%_)))
                        (_%tl9984499916%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e9984299909%_))))
                    (if (gx#identifier? _%hd9984399913%_)
                        (if (gx#free-identifier=?
                             |[1]#_g100194_|
                             _%hd9984399913%_)
                            (if (gx#stx-pair? _%tl9984499916%_)
                                (let ((_%e9984599919%_
                                       (gx#syntax-e _%tl9984499916%_)))
                                  (let ((_%hd9984699923%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9984599919%_)))
                                        (_%tl9984799926%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9984599919%_))))
                                    (if (gx#stx-pair/null? _%tl9984799926%_)
                                        (let ((_g100195_
                                               (gx#syntax-split-splice
                                                _%tl9984799926%_
                                                '0)))
                                          (begin
                                            (let ((_g100196_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g100195_)
                                                         (##vector-length
                                                          _g100195_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g100196_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g100196_)))
                                            (let ((_%target9984899929%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g100195_
                                                      0)))
                                                  (_%tl9985099932%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g100195_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl9985099932%_)
                                                  (letrec ((_%loop9985199935%_
                                                            (lambda (_%hd9984999939%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body9985599942%_)
                      (if (gx#stx-pair? _%hd9984999939%_)
                          (let ((_%e9985299945%_
                                 (gx#syntax-e _%hd9984999939%_)))
                            (let ((_%lp-hd9985399949%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e9985299945%_)))
                                  (_%lp-tl9985499952%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e9985299945%_))))
                              (_%loop9985199935%_
                               _%lp-tl9985499952%_
                               (cons _%lp-hd9985399949%_ _%body9985599942%_))))
                          (let ((_%body9985699955%_
                                 (reverse _%body9985599942%_)))
                            ((lambda (_%L99959%_
                                      _%L99961%_
                                      _%L99962%_
                                      _%L99963%_)
                               (let* ((_%g99992100000%_
                                       (lambda (_%g9999399996%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9999399996%_)))
                                      (_%g99991100027%_
                                       (lambda (_%g99993100004%_)
                                         ((lambda (_%L100007%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%L99963%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%L100007%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%L99962%_ '())
                                                    (let ((__tmp100197
                                                           (lambda (_%g100018100021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g100019100024%_)
                     (cons _%g100018100021%_ _%g100019100024%_))))
              (declare (not safe))
              (__foldr1 __tmp100197 '() _%L99959%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g99993100004%_))))
                                 (_%g99991100027%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx99821%_
                                     _%L99961%_)))))
                             _%body9985699955%_
                             _%hd9984699923%_
                             _%hd9984099903%_
                             _%hd9983799893%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop9985199935%_
                                                     _%target9984899929%_
                                                     '()))
                                                  (_%g9982499862%_
                                                   _%g9982599866%_)))))
                                        (_%g9982499862%_ _%g9982599866%_))))
                                (_%g9982499862%_ _%g9982599866%_))
                            (_%g9982499862%_ _%g9982599866%_))
                        (_%g9982499862%_ _%g9982599866%_))))
                (_%g9982499862%_ _%g9982599866%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9982499862%_
                                                     _%g9982599866%_))))
                                            (_%g9982499862%_
                                             _%g9982599866%_))))
                                    (_%g9982499862%_ _%g9982599866%_))))
                            (_%g9982499862%_ _%g9982599866%_))))
                    (_%g9982499862%_ _%g9982599866%_)))))
        (_%g99823100031%_ _%stx99821%_)))))
