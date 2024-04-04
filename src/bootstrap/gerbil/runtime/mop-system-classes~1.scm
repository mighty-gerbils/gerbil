(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g98832_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx98452%_)
      (let* ((_%g9845598493%_
              (lambda (_%g9845698489%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9845698489%_)))
             (_%g9845498662%_
              (lambda (_%g9845698497%_)
                (if (gx#stx-pair? _%g9845698497%_)
                    (let ((_%e9846398500%_ (gx#syntax-e _%g9845698497%_)))
                      (let ((_%hd9846298504%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9846398500%_)))
                            (_%tl9846198507%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9846398500%_))))
                        (if (gx#stx-pair? _%tl9846198507%_)
                            (let ((_%e9846698510%_
                                   (gx#syntax-e _%tl9846198507%_)))
                              (let ((_%hd9846598514%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9846698510%_)))
                                    (_%tl9846498517%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9846698510%_))))
                                (if (gx#stx-pair? _%hd9846598514%_)
                                    (let ((_%e9846998520%_
                                           (gx#syntax-e _%hd9846598514%_)))
                                      (let ((_%hd9846898524%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9846998520%_)))
                                            (_%tl9846798527%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9846998520%_))))
                                        (if (gx#stx-pair? _%tl9846798527%_)
                                            (let ((_%e9847298530%_
                                                   (gx#syntax-e
                                                    _%tl9846798527%_)))
                                              (let ((_%hd9847198534%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9847298530%_)))
                                                    (_%tl9847098537%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9847298530%_))))
                                                (if (gx#stx-null?
                                                     _%tl9847098537%_)
                                                    (if (gx#stx-pair?
                                                         _%tl9846498517%_)
                                                        (let ((_%e9847598540%_
                                                               (gx#syntax-e
                                                                _%tl9846498517%_)))
                                                          (let ((_%hd9847498544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e9847598540%_)))
                        (_%tl9847398547%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e9847598540%_))))
                    (if (gx#identifier? _%hd9847498544%_)
                        (if (gx#free-identifier=?
                             |[1]#_g98832_|
                             _%hd9847498544%_)
                            (if (gx#stx-pair? _%tl9847398547%_)
                                (let ((_%e9847898550%_
                                       (gx#syntax-e _%tl9847398547%_)))
                                  (let ((_%hd9847798554%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9847898550%_)))
                                        (_%tl9847698557%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9847898550%_))))
                                    (if (gx#stx-pair/null? _%tl9847698557%_)
                                        (let ((_g98833_
                                               (gx#syntax-split-splice
                                                _%tl9847698557%_
                                                '0)))
                                          (begin
                                            (let ((_g98834_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g98833_)
                                                         (##vector-length
                                                          _g98833_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g98834_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g98834_)))
                                            (let ((_%target9847998560%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g98833_
                                                      0)))
                                                  (_%tl9848198563%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g98833_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl9848198563%_)
                                                  (letrec ((_%loop9848298566%_
                                                            (lambda (_%hd9848098570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body9848698573%_)
                      (if (gx#stx-pair? _%hd9848098570%_)
                          (let ((_%e9848398576%_
                                 (gx#syntax-e _%hd9848098570%_)))
                            (let ((_%lp-hd9848498580%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e9848398576%_)))
                                  (_%lp-tl9848598583%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e9848398576%_))))
                              (_%loop9848298566%_
                               _%lp-tl9848598583%_
                               (cons _%lp-hd9848498580%_ _%body9848698573%_))))
                          (let ((_%body9848798586%_
                                 (reverse _%body9848698573%_)))
                            ((lambda (_%L98590%_
                                      _%L98592%_
                                      _%L98593%_
                                      _%L98594%_)
                               (let* ((_%g9862398631%_
                                       (lambda (_%g9862498627%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9862498627%_)))
                                      (_%g9862298658%_
                                       (lambda (_%g9862498635%_)
                                         ((lambda (_%L98638%_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'def)
                                                    (cons _%L98594%_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin-annotation)
                              (cons (cons (gx#datum->syntax '#f '@predicate)
                                          (cons _%L98638%_ '()))
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%L98593%_ '())
                                                      (let ((__tmp98835
                                                             (lambda (_%g9864998652%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g9865098655%_)
                       (cons _%g9864998652%_ _%g9865098655%_))))
                (declare (not safe))
                (__foldr1 __tmp98835 '() _%L98590%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9862498635%_))))
                                 (_%g9862298658%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx98452%_
                                     _%L98592%_)))))
                             _%body9848798586%_
                             _%hd9847798554%_
                             _%hd9847198534%_
                             _%hd9846898524%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop9848298566%_
                                                     _%target9847998560%_
                                                     '()))
                                                  (_%g9845598493%_
                                                   _%g9845698497%_)))))
                                        (_%g9845598493%_ _%g9845698497%_))))
                                (_%g9845598493%_ _%g9845698497%_))
                            (_%g9845598493%_ _%g9845698497%_))
                        (_%g9845598493%_ _%g9845698497%_))))
                (_%g9845598493%_ _%g9845698497%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9845598493%_
                                                     _%g9845698497%_))))
                                            (_%g9845598493%_
                                             _%g9845698497%_))))
                                    (_%g9845598493%_ _%g9845698497%_))))
                            (_%g9845598493%_ _%g9845698497%_))))
                    (_%g9845598493%_ _%g9845698497%_)))))
        (_%g9845498662%_ _%stx98452%_)))))
