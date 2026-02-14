(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g139862_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx139426%_)
      (let* ((_%g139429139467%_
              (lambda (_%g139430139463%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g139430139463%_)))
             (_%g139428139634%_
              (lambda (_%g139430139471%_)
                (if (gx#stx-pair? _%g139430139471%_)
                    (let ((_%e139435139474%_ (gx#syntax-e _%g139430139471%_)))
                      (let ((_%hd139436139478%_
                             (let ()
                               (declare (not safe))
                               (##car _%e139435139474%_)))
                            (_%tl139437139481%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e139435139474%_))))
                        (if (gx#stx-pair? _%tl139437139481%_)
                            (let ((_%e139438139484%_
                                   (gx#syntax-e _%tl139437139481%_)))
                              (let ((_%hd139439139488%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e139438139484%_)))
                                    (_%tl139440139491%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e139438139484%_))))
                                (if (gx#stx-pair? _%hd139439139488%_)
                                    (let ((_%e139441139494%_
                                           (gx#syntax-e _%hd139439139488%_)))
                                      (let ((_%hd139442139498%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e139441139494%_)))
                                            (_%tl139443139501%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e139441139494%_))))
                                        (if (gx#stx-pair? _%tl139443139501%_)
                                            (let ((_%e139444139504%_
                                                   (gx#syntax-e
                                                    _%tl139443139501%_)))
                                              (let ((_%hd139445139508%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e139444139504%_)))
                                                    (_%tl139446139511%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e139444139504%_))))
                                                (if (gx#stx-null?
                                                     _%tl139446139511%_)
                                                    (if (gx#stx-pair?
                                                         _%tl139440139491%_)
                                                        (let ((_%e139447139514%_
                                                               (gx#syntax-e
                                                                _%tl139440139491%_)))
                                                          (let ((_%hd139448139518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e139447139514%_)))
                        (_%tl139449139521%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e139447139514%_))))
                    (if (gx#identifier? _%hd139448139518%_)
                        (if (gx#free-identifier=?
                             |[1]#_g139862_|
                             _%hd139448139518%_)
                            (if (gx#stx-pair? _%tl139449139521%_)
                                (let ((_%e139450139524%_
                                       (gx#syntax-e _%tl139449139521%_)))
                                  (let ((_%hd139451139528%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139450139524%_)))
                                        (_%tl139452139531%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139450139524%_))))
                                    (if (gx#stx-pair/null? _%tl139452139531%_)
                                        (let ((_g139863_
                                               (gx#syntax-split-splice
                                                _%tl139452139531%_
                                                '0)))
                                          (begin
                                            (let ((_g139864_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g139863_)
                                                         (##values-length
                                                          _g139863_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g139864_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g139864_)))
                                            (let ((_%target139453139534%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g139863_
                                                      0)))
                                                  (_%tl139455139537%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g139863_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl139455139537%_)
                                                  (letrec ((_%loop139456139540%_
                                                            (lambda (_%hd139454139544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body139460139547%_)
                      (if (gx#stx-pair? _%hd139454139544%_)
                          (let ((_%e139457139549%_
                                 (gx#syntax-e _%hd139454139544%_)))
                            (let ((_%lp-hd139458139553%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139457139549%_)))
                                  (_%lp-tl139459139556%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139457139549%_))))
                              (_%loop139456139540%_
                               _%lp-tl139459139556%_
                               (cons _%lp-hd139458139553%_
                                     _%body139460139547%_))))
                          (let ((_%body139461139559%_
                                 (reverse _%body139460139547%_)))
                            ((lambda (_%g139431139562%_
                                      _%g139432139564%_
                                      _%g139433139565%_
                                      _%g139434139566%_)
                               (let* ((_%g139595139603%_
                                       (lambda (_%g139596139599%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g139596139599%_)))
                                      (_%g139594139630%_
                                       (lambda (_%g139596139607%_)
                                         ((lambda (_%g139597139610%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%g139434139566%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%g139597139610%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%g139433139565%_
                                                          '())
                                                    (let ((__tmp139865
                                                           (lambda (_%g139621139624%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g139622139627%_)
                     (cons _%g139621139624%_ _%g139622139627%_))))
              (declare (not safe))
              (foldr__0 __tmp139865 '() _%g139431139562%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g139596139607%_))))
                                 (_%g139594139630%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx139426%_
                                     _%g139432139564%_)))))
                             _%body139461139559%_
                             _%hd139451139528%_
                             _%hd139445139508%_
                             _%hd139442139498%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop139456139540%_
                                                     _%target139453139534%_
                                                     '()))
                                                  (_%g139429139467%_
                                                   _%g139430139471%_)))))
                                        (_%g139429139467%_
                                         _%g139430139471%_))))
                                (_%g139429139467%_ _%g139430139471%_))
                            (_%g139429139467%_ _%g139430139471%_))
                        (_%g139429139467%_ _%g139430139471%_))))
                (_%g139429139467%_ _%g139430139471%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g139429139467%_
                                                     _%g139430139471%_))))
                                            (_%g139429139467%_
                                             _%g139430139471%_))))
                                    (_%g139429139467%_ _%g139430139471%_))))
                            (_%g139429139467%_ _%g139430139471%_))))
                    (_%g139429139467%_ _%g139430139471%_)))))
        (_%g139428139634%_ _%stx139426%_)))))
