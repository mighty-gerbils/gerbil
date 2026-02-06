(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g136562_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx136134%_)
      (let* ((_%g136137136175%_
              (lambda (_%g136138136171%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g136138136171%_)))
             (_%g136136136342%_
              (lambda (_%g136138136179%_)
                (if (gx#stx-pair? _%g136138136179%_)
                    (let ((_%e136143136182%_ (gx#syntax-e _%g136138136179%_)))
                      (let ((_%hd136144136186%_
                             (let ()
                               (declare (not safe))
                               (##car _%e136143136182%_)))
                            (_%tl136145136189%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e136143136182%_))))
                        (if (gx#stx-pair? _%tl136145136189%_)
                            (let ((_%e136146136192%_
                                   (gx#syntax-e _%tl136145136189%_)))
                              (let ((_%hd136147136196%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e136146136192%_)))
                                    (_%tl136148136199%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e136146136192%_))))
                                (if (gx#stx-pair? _%hd136147136196%_)
                                    (let ((_%e136149136202%_
                                           (gx#syntax-e _%hd136147136196%_)))
                                      (let ((_%hd136150136206%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e136149136202%_)))
                                            (_%tl136151136209%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e136149136202%_))))
                                        (if (gx#stx-pair? _%tl136151136209%_)
                                            (let ((_%e136152136212%_
                                                   (gx#syntax-e
                                                    _%tl136151136209%_)))
                                              (let ((_%hd136153136216%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e136152136212%_)))
                                                    (_%tl136154136219%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e136152136212%_))))
                                                (if (gx#stx-null?
                                                     _%tl136154136219%_)
                                                    (if (gx#stx-pair?
                                                         _%tl136148136199%_)
                                                        (let ((_%e136155136222%_
                                                               (gx#syntax-e
                                                                _%tl136148136199%_)))
                                                          (let ((_%hd136156136226%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e136155136222%_)))
                        (_%tl136157136229%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e136155136222%_))))
                    (if (gx#identifier? _%hd136156136226%_)
                        (if (gx#free-identifier=?
                             |[1]#_g136562_|
                             _%hd136156136226%_)
                            (if (gx#stx-pair? _%tl136157136229%_)
                                (let ((_%e136158136232%_
                                       (gx#syntax-e _%tl136157136229%_)))
                                  (let ((_%hd136159136236%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136158136232%_)))
                                        (_%tl136160136239%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136158136232%_))))
                                    (if (gx#stx-pair/null? _%tl136160136239%_)
                                        (let ((_g136563_
                                               (gx#syntax-split-splice
                                                _%tl136160136239%_
                                                '0)))
                                          (begin
                                            (let ((_g136564_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g136563_)
                                                         (##values-length
                                                          _g136563_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g136564_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g136564_)))
                                            (let ((_%target136161136242%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g136563_
                                                      0)))
                                                  (_%tl136163136245%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g136563_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl136163136245%_)
                                                  (letrec ((_%loop136164136248%_
                                                            (lambda (_%hd136162136252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body136168136255%_)
                      (if (gx#stx-pair? _%hd136162136252%_)
                          (let ((_%e136165136257%_
                                 (gx#syntax-e _%hd136162136252%_)))
                            (let ((_%lp-hd136166136261%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e136165136257%_)))
                                  (_%lp-tl136167136264%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e136165136257%_))))
                              (_%loop136164136248%_
                               _%lp-tl136167136264%_
                               (cons _%lp-hd136166136261%_
                                     _%body136168136255%_))))
                          (let ((_%body136169136267%_
                                 (reverse _%body136168136255%_)))
                            ((lambda (_%g136139136270%_
                                      _%g136140136272%_
                                      _%g136141136273%_
                                      _%g136142136274%_)
                               (let* ((_%g136303136311%_
                                       (lambda (_%g136304136307%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g136304136307%_)))
                                      (_%g136302136338%_
                                       (lambda (_%g136304136315%_)
                                         ((lambda (_%g136305136318%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%g136142136274%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%g136305136318%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%g136141136273%_
                                                          '())
                                                    (let ((__tmp136565
                                                           (lambda (_%g136329136332%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g136330136335%_)
                     (cons _%g136329136332%_ _%g136330136335%_))))
              (declare (not safe))
              (foldr__0 __tmp136565 '() _%g136139136270%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g136304136315%_))))
                                 (_%g136302136338%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx136134%_
                                     _%g136140136272%_)))))
                             _%body136169136267%_
                             _%hd136159136236%_
                             _%hd136153136216%_
                             _%hd136150136206%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop136164136248%_
                                                     _%target136161136242%_
                                                     '()))
                                                  (_%g136137136175%_
                                                   _%g136138136179%_)))))
                                        (_%g136137136175%_
                                         _%g136138136179%_))))
                                (_%g136137136175%_ _%g136138136179%_))
                            (_%g136137136175%_ _%g136138136179%_))
                        (_%g136137136175%_ _%g136138136179%_))))
                (_%g136137136175%_ _%g136138136179%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g136137136175%_
                                                     _%g136138136179%_))))
                                            (_%g136137136175%_
                                             _%g136138136179%_))))
                                    (_%g136137136175%_ _%g136138136179%_))))
                            (_%g136137136175%_ _%g136138136179%_))))
                    (_%g136137136175%_ _%g136138136179%_)))))
        (_%g136136136342%_ _%stx136134%_)))))
