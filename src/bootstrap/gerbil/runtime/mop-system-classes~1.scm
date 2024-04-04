(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g98815_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx98435%_)
      (let* ((_%g9843898476%_
              (lambda (_%g9843998472%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9843998472%_)))
             (_%g9843798645%_
              (lambda (_%g9843998480%_)
                (if (gx#stx-pair? _%g9843998480%_)
                    (let ((_%e9844698483%_ (gx#syntax-e _%g9843998480%_)))
                      (let ((_%hd9844598487%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9844698483%_)))
                            (_%tl9844498490%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9844698483%_))))
                        (if (gx#stx-pair? _%tl9844498490%_)
                            (let ((_%e9844998493%_
                                   (gx#syntax-e _%tl9844498490%_)))
                              (let ((_%hd9844898497%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9844998493%_)))
                                    (_%tl9844798500%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9844998493%_))))
                                (if (gx#stx-pair? _%hd9844898497%_)
                                    (let ((_%e9845298503%_
                                           (gx#syntax-e _%hd9844898497%_)))
                                      (let ((_%hd9845198507%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9845298503%_)))
                                            (_%tl9845098510%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9845298503%_))))
                                        (if (gx#stx-pair? _%tl9845098510%_)
                                            (let ((_%e9845598513%_
                                                   (gx#syntax-e
                                                    _%tl9845098510%_)))
                                              (let ((_%hd9845498517%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9845598513%_)))
                                                    (_%tl9845398520%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9845598513%_))))
                                                (if (gx#stx-null?
                                                     _%tl9845398520%_)
                                                    (if (gx#stx-pair?
                                                         _%tl9844798500%_)
                                                        (let ((_%e9845898523%_
                                                               (gx#syntax-e
                                                                _%tl9844798500%_)))
                                                          (let ((_%hd9845798527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e9845898523%_)))
                        (_%tl9845698530%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e9845898523%_))))
                    (if (gx#identifier? _%hd9845798527%_)
                        (if (gx#free-identifier=?
                             |[1]#_g98815_|
                             _%hd9845798527%_)
                            (if (gx#stx-pair? _%tl9845698530%_)
                                (let ((_%e9846198533%_
                                       (gx#syntax-e _%tl9845698530%_)))
                                  (let ((_%hd9846098537%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9846198533%_)))
                                        (_%tl9845998540%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9846198533%_))))
                                    (if (gx#stx-pair/null? _%tl9845998540%_)
                                        (let ((_g98816_
                                               (gx#syntax-split-splice
                                                _%tl9845998540%_
                                                '0)))
                                          (begin
                                            (let ((_g98817_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g98816_)
                                                         (##vector-length
                                                          _g98816_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g98817_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g98817_)))
                                            (let ((_%target9846298543%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g98816_
                                                      0)))
                                                  (_%tl9846498546%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g98816_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl9846498546%_)
                                                  (letrec ((_%loop9846598549%_
                                                            (lambda (_%hd9846398553%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body9846998556%_)
                      (if (gx#stx-pair? _%hd9846398553%_)
                          (let ((_%e9846698559%_
                                 (gx#syntax-e _%hd9846398553%_)))
                            (let ((_%lp-hd9846798563%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e9846698559%_)))
                                  (_%lp-tl9846898566%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e9846698559%_))))
                              (_%loop9846598549%_
                               _%lp-tl9846898566%_
                               (cons _%lp-hd9846798563%_ _%body9846998556%_))))
                          (let ((_%body9847098569%_
                                 (reverse _%body9846998556%_)))
                            ((lambda (_%L98573%_
                                      _%L98575%_
                                      _%L98576%_
                                      _%L98577%_)
                               (let* ((_%g9860698614%_
                                       (lambda (_%g9860798610%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9860798610%_)))
                                      (_%g9860598641%_
                                       (lambda (_%g9860798618%_)
                                         ((lambda (_%L98621%_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'def)
                                                    (cons _%L98577%_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin-annotation)
                              (cons (cons (gx#datum->syntax '#f '@predicate)
                                          (cons _%L98621%_ '()))
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%L98576%_ '())
                                                      (let ((__tmp98818
                                                             (lambda (_%g9863298635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g9863398638%_)
                       (cons _%g9863298635%_ _%g9863398638%_))))
                (declare (not safe))
                (__foldr1 __tmp98818 '() _%L98573%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9860798618%_))))
                                 (_%g9860598641%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx98435%_
                                     _%L98575%_)))))
                             _%body9847098569%_
                             _%hd9846098537%_
                             _%hd9845498517%_
                             _%hd9845198507%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop9846598549%_
                                                     _%target9846298543%_
                                                     '()))
                                                  (_%g9843898476%_
                                                   _%g9843998480%_)))))
                                        (_%g9843898476%_ _%g9843998480%_))))
                                (_%g9843898476%_ _%g9843998480%_))
                            (_%g9843898476%_ _%g9843998480%_))
                        (_%g9843898476%_ _%g9843998480%_))))
                (_%g9843898476%_ _%g9843998480%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9843898476%_
                                                     _%g9843998480%_))))
                                            (_%g9843898476%_
                                             _%g9843998480%_))))
                                    (_%g9843898476%_ _%g9843998480%_))))
                            (_%g9843898476%_ _%g9843998480%_))))
                    (_%g9843898476%_ _%g9843998480%_)))))
        (_%g9843798645%_ _%stx98435%_)))))
