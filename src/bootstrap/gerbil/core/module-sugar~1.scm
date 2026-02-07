(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_%$stx45965%_)
      (let* ((_%__stx4874948750%_ _%$stx45965%_)
             (_%g4597045989%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4874948750%_))))
        (let ((_%__kont4875248753%_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (_%__kont4875448755%_
               (lambda (_%g4597546016%_ _%g4597646018%_ _%g4597746019%_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _%g4597646018%_
                                   (cons (cons _%g4597746019%_ _%g4597546016%_)
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _%g4597646018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? _%__stx4874948750%_)
              (let ((_%e4597246041%_ (gx#syntax-e _%__stx4874948750%_)))
                (let ((_%tl4597446048%_
                       (let () (declare (not safe)) (##cdr _%e4597246041%_)))
                      (_%hd4597346045%_
                       (let () (declare (not safe)) (##car _%e4597246041%_))))
                  (if (gx#stx-null? _%tl4597446048%_)
                      (_%__kont4875248753%_)
                      (if (gx#stx-pair? _%tl4597446048%_)
                          (let ((_%e4598146006%_
                                 (gx#syntax-e _%tl4597446048%_)))
                            (let ((_%tl4598346013%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4598146006%_)))
                                  (_%hd4598246010%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4598146006%_))))
                              (_%__kont4875448755%_
                               _%tl4598346013%_
                               _%hd4598246010%_
                               _%hd4597346045%_)))
                          (let () (declare (not safe)) (_%g4597045989%_))))))
              (let () (declare (not safe)) (_%g4597045989%_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_%$stx46059%_)
      (let* ((_%__stx4877948780%_ _%$stx46059%_)
             (_%g4606446104%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4877948780%_))))
        (let ((_%__kont4878248783%_
               (lambda (_%g4606646240%_ _%g4606746242%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g4606746242%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _%g4606646240%_ '()))
                                   '())))))
              (_%__kont4878448785%_
               (lambda (_%g4607746169%_
                        _%g4607846171%_
                        _%g4607946172%_
                        _%g4608046173%_)
                 (cons _%g4608046173%_
                       (cons _%g4607946172%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g4607846171%_
                                               (foldr (lambda (_%g4619446197%_
                                                               _%g4619546200%_)
                                                        (cons _%g4619446197%_
                                                              _%g4619546200%_))
                                                      '()
                                                      _%g4607746169%_)))
                                   '()))))))
          (let* ((_%__match4883448835%_
                  (lambda (_%e4608146111%_
                           _%hd4608246115%_
                           _%tl4608346118%_
                           _%e4608446121%_
                           _%hd4608546125%_
                           _%tl4608646128%_
                           _%e4608746131%_
                           _%hd4608846135%_
                           _%tl4608946138%_
                           _%__splice4878648787%_
                           _%target4609046141%_
                           _%tl4609246144%_)
                    (letrec ((_%loop4609346147%_
                              (lambda (_%hd4609146151%_ _%body4609746154%_)
                                (if (gx#stx-pair? _%hd4609146151%_)
                                    (let ((_%e4609446156%_
                                           (gx#syntax-e _%hd4609146151%_)))
                                      (let ((_%lp-tl4609646163%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4609446156%_)))
                                            (_%lp-hd4609546160%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4609446156%_))))
                                        (_%loop4609346147%_
                                         _%lp-tl4609646163%_
                                         (cons _%lp-hd4609546160%_
                                               _%body4609746154%_))))
                                    (let ((_%body4609846166%_
                                           (reverse _%body4609746154%_)))
                                      (let ((_%g4607746169%_
                                             _%body4609846166%_)
                                            (_%g4607846171%_ _%tl4608946138%_)
                                            (_%g4607946172%_ _%hd4608846135%_)
                                            (_%g4608046173%_ _%hd4608246115%_))
                                        (if (gx#identifier? _%g4607946172%_)
                                            (_%__kont4878448785%_
                                             _%g4607746169%_
                                             _%g4607846171%_
                                             _%g4607946172%_
                                             _%g4608046173%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4606446104%_)))))))))
                      (_%loop4609346147%_ _%target4609046141%_ '()))))
                 (_%__match4880848809%_
                  (lambda (_%e4606846210%_
                           _%hd4606946214%_
                           _%tl4607046217%_
                           _%e4607146220%_
                           _%hd4607246224%_
                           _%tl4607346227%_
                           _%e4607446230%_
                           _%hd4607546234%_
                           _%tl4607646237%_)
                    (let ((_%g4606646240%_ _%hd4607546234%_)
                          (_%g4606746242%_ _%hd4607246224%_))
                      (if (gx#identifier? _%g4606746242%_)
                          (_%__kont4878248783%_
                           _%g4606646240%_
                           _%g4606746242%_)
                          (if (gx#stx-pair? _%hd4607246224%_)
                              (let ((_%e4608746131%_
                                     (gx#syntax-e _%hd4607246224%_)))
                                (let ((_%tl4608946138%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4608746131%_)))
                                      (_%hd4608846135%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4608746131%_))))
                                  (if (gx#stx-pair/null? _%tl4607346227%_)
                                      (let ((_%__splice4878648787%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4607346227%_
                                              '0)))
                                        (let ((_%tl4609246144%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4878648787%_
                                                  '1)))
                                              (_%target4609046141%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4878648787%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4609246144%_)
                                              (_%__match4883448835%_
                                               _%e4606846210%_
                                               _%hd4606946214%_
                                               _%tl4607046217%_
                                               _%e4607146220%_
                                               _%hd4607246224%_
                                               _%tl4607346227%_
                                               _%e4608746131%_
                                               _%hd4608846135%_
                                               _%tl4608946138%_
                                               _%__splice4878648787%_
                                               _%target4609046141%_
                                               _%tl4609246144%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4606446104%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4606446104%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4606446104%_))))))))
            (if (gx#stx-pair? _%__stx4877948780%_)
                (let ((_%e4606846210%_ (gx#syntax-e _%__stx4877948780%_)))
                  (let ((_%tl4607046217%_
                         (let () (declare (not safe)) (##cdr _%e4606846210%_)))
                        (_%hd4606946214%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4606846210%_))))
                    (if (gx#stx-pair? _%tl4607046217%_)
                        (let ((_%e4607146220%_ (gx#syntax-e _%tl4607046217%_)))
                          (let ((_%tl4607346227%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4607146220%_)))
                                (_%hd4607246224%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4607146220%_))))
                            (if (gx#stx-pair? _%tl4607346227%_)
                                (let ((_%e4607446230%_
                                       (gx#syntax-e _%tl4607346227%_)))
                                  (let ((_%tl4607646237%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4607446230%_)))
                                        (_%hd4607546234%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4607446230%_))))
                                    (if (gx#stx-null? _%tl4607646237%_)
                                        (_%__match4880848809%_
                                         _%e4606846210%_
                                         _%hd4606946214%_
                                         _%tl4607046217%_
                                         _%e4607146220%_
                                         _%hd4607246224%_
                                         _%tl4607346227%_
                                         _%e4607446230%_
                                         _%hd4607546234%_
                                         _%tl4607646237%_)
                                        (if (gx#stx-pair? _%hd4607246224%_)
                                            (let ((_%e4608746131%_
                                                   (gx#syntax-e
                                                    _%hd4607246224%_)))
                                              (let ((_%tl4608946138%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4608746131%_)))
                                                    (_%hd4608846135%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4608746131%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4607346227%_)
                                                    (let ((_%__splice4878648787%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4607346227%_
                                                            '0)))
                                                      (let ((_%tl4609246144%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4878648787%_ '1)))
                    (_%target4609046141%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4878648787%_ '0))))
                (if (gx#stx-null? _%tl4609246144%_)
                    (_%__match4883448835%_
                     _%e4606846210%_
                     _%hd4606946214%_
                     _%tl4607046217%_
                     _%e4607146220%_
                     _%hd4607246224%_
                     _%tl4607346227%_
                     _%e4608746131%_
                     _%hd4608846135%_
                     _%tl4608946138%_
                     _%__splice4878648787%_
                     _%target4609046141%_
                     _%tl4609246144%_)
                    (let () (declare (not safe)) (_%g4606446104%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4606446104%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4606446104%_))))))
                                (if (gx#stx-pair? _%hd4607246224%_)
                                    (let ((_%e4608746131%_
                                           (gx#syntax-e _%hd4607246224%_)))
                                      (let ((_%tl4608946138%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4608746131%_)))
                                            (_%hd4608846135%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4608746131%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4607346227%_)
                                            (let ((_%__splice4878648787%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4607346227%_
                                                    '0)))
                                              (let ((_%tl4609246144%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4878648787%_
                                                        '1)))
                                                    (_%target4609046141%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4878648787%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4609246144%_)
                                                    (_%__match4883448835%_
                                                     _%e4606846210%_
                                                     _%hd4606946214%_
                                                     _%tl4607046217%_
                                                     _%e4607146220%_
                                                     _%hd4607246224%_
                                                     _%tl4607346227%_
                                                     _%e4608746131%_
                                                     _%hd4608846135%_
                                                     _%tl4608946138%_
                                                     _%__splice4878648787%_
                                                     _%target4609046141%_
                                                     _%tl4609246144%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4606446104%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4606446104%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4606446104%_))))))
                        (let () (declare (not safe)) (_%g4606446104%_)))))
                (let () (declare (not safe)) (_%g4606446104%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_%$stx46262%_)
      (let* ((_%__stx4883748838%_ _%$stx46262%_)
             (_%g4626746307%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4883748838%_))))
        (let ((_%__kont4884048841%_
               (lambda (_%g4626946443%_ _%g4627046445%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g4627046445%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _%g4626946443%_ '()))
                                   '())))))
              (_%__kont4884248843%_
               (lambda (_%g4628046372%_
                        _%g4628146374%_
                        _%g4628246375%_
                        _%g4628346376%_)
                 (cons _%g4628346376%_
                       (cons _%g4628246375%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g4628146374%_
                                               (foldr (lambda (_%g4639746400%_
                                                               _%g4639846403%_)
                                                        (cons _%g4639746400%_
                                                              _%g4639846403%_))
                                                      '()
                                                      _%g4628046372%_)))
                                   '()))))))
          (let* ((_%__match4889248893%_
                  (lambda (_%e4628446314%_
                           _%hd4628546318%_
                           _%tl4628646321%_
                           _%e4628746324%_
                           _%hd4628846328%_
                           _%tl4628946331%_
                           _%e4629046334%_
                           _%hd4629146338%_
                           _%tl4629246341%_
                           _%__splice4884448845%_
                           _%target4629346344%_
                           _%tl4629546347%_)
                    (letrec ((_%loop4629646350%_
                              (lambda (_%hd4629446354%_ _%body4630046357%_)
                                (if (gx#stx-pair? _%hd4629446354%_)
                                    (let ((_%e4629746359%_
                                           (gx#syntax-e _%hd4629446354%_)))
                                      (let ((_%lp-tl4629946366%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4629746359%_)))
                                            (_%lp-hd4629846363%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4629746359%_))))
                                        (_%loop4629646350%_
                                         _%lp-tl4629946366%_
                                         (cons _%lp-hd4629846363%_
                                               _%body4630046357%_))))
                                    (let ((_%body4630146369%_
                                           (reverse _%body4630046357%_)))
                                      (let ((_%g4628046372%_
                                             _%body4630146369%_)
                                            (_%g4628146374%_ _%tl4629246341%_)
                                            (_%g4628246375%_ _%hd4629146338%_)
                                            (_%g4628346376%_ _%hd4628546318%_))
                                        (if (gx#identifier? _%g4628246375%_)
                                            (_%__kont4884248843%_
                                             _%g4628046372%_
                                             _%g4628146374%_
                                             _%g4628246375%_
                                             _%g4628346376%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4626746307%_)))))))))
                      (_%loop4629646350%_ _%target4629346344%_ '()))))
                 (_%__match4886648867%_
                  (lambda (_%e4627146413%_
                           _%hd4627246417%_
                           _%tl4627346420%_
                           _%e4627446423%_
                           _%hd4627546427%_
                           _%tl4627646430%_
                           _%e4627746433%_
                           _%hd4627846437%_
                           _%tl4627946440%_)
                    (let ((_%g4626946443%_ _%hd4627846437%_)
                          (_%g4627046445%_ _%hd4627546427%_))
                      (if (gx#identifier? _%g4627046445%_)
                          (_%__kont4884048841%_
                           _%g4626946443%_
                           _%g4627046445%_)
                          (if (gx#stx-pair? _%hd4627546427%_)
                              (let ((_%e4629046334%_
                                     (gx#syntax-e _%hd4627546427%_)))
                                (let ((_%tl4629246341%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4629046334%_)))
                                      (_%hd4629146338%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4629046334%_))))
                                  (if (gx#stx-pair/null? _%tl4627646430%_)
                                      (let ((_%__splice4884448845%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4627646430%_
                                              '0)))
                                        (let ((_%tl4629546347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4884448845%_
                                                  '1)))
                                              (_%target4629346344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4884448845%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4629546347%_)
                                              (_%__match4889248893%_
                                               _%e4627146413%_
                                               _%hd4627246417%_
                                               _%tl4627346420%_
                                               _%e4627446423%_
                                               _%hd4627546427%_
                                               _%tl4627646430%_
                                               _%e4629046334%_
                                               _%hd4629146338%_
                                               _%tl4629246341%_
                                               _%__splice4884448845%_
                                               _%target4629346344%_
                                               _%tl4629546347%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4626746307%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4626746307%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4626746307%_))))))))
            (if (gx#stx-pair? _%__stx4883748838%_)
                (let ((_%e4627146413%_ (gx#syntax-e _%__stx4883748838%_)))
                  (let ((_%tl4627346420%_
                         (let () (declare (not safe)) (##cdr _%e4627146413%_)))
                        (_%hd4627246417%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4627146413%_))))
                    (if (gx#stx-pair? _%tl4627346420%_)
                        (let ((_%e4627446423%_ (gx#syntax-e _%tl4627346420%_)))
                          (let ((_%tl4627646430%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4627446423%_)))
                                (_%hd4627546427%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4627446423%_))))
                            (if (gx#stx-pair? _%tl4627646430%_)
                                (let ((_%e4627746433%_
                                       (gx#syntax-e _%tl4627646430%_)))
                                  (let ((_%tl4627946440%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4627746433%_)))
                                        (_%hd4627846437%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4627746433%_))))
                                    (if (gx#stx-null? _%tl4627946440%_)
                                        (_%__match4886648867%_
                                         _%e4627146413%_
                                         _%hd4627246417%_
                                         _%tl4627346420%_
                                         _%e4627446423%_
                                         _%hd4627546427%_
                                         _%tl4627646430%_
                                         _%e4627746433%_
                                         _%hd4627846437%_
                                         _%tl4627946440%_)
                                        (if (gx#stx-pair? _%hd4627546427%_)
                                            (let ((_%e4629046334%_
                                                   (gx#syntax-e
                                                    _%hd4627546427%_)))
                                              (let ((_%tl4629246341%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4629046334%_)))
                                                    (_%hd4629146338%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4629046334%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4627646430%_)
                                                    (let ((_%__splice4884448845%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4627646430%_
                                                            '0)))
                                                      (let ((_%tl4629546347%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4884448845%_ '1)))
                    (_%target4629346344%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4884448845%_ '0))))
                (if (gx#stx-null? _%tl4629546347%_)
                    (_%__match4889248893%_
                     _%e4627146413%_
                     _%hd4627246417%_
                     _%tl4627346420%_
                     _%e4627446423%_
                     _%hd4627546427%_
                     _%tl4627646430%_
                     _%e4629046334%_
                     _%hd4629146338%_
                     _%tl4629246341%_
                     _%__splice4884448845%_
                     _%target4629346344%_
                     _%tl4629546347%_)
                    (let () (declare (not safe)) (_%g4626746307%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4626746307%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4626746307%_))))))
                                (if (gx#stx-pair? _%hd4627546427%_)
                                    (let ((_%e4629046334%_
                                           (gx#syntax-e _%hd4627546427%_)))
                                      (let ((_%tl4629246341%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4629046334%_)))
                                            (_%hd4629146338%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4629046334%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4627646430%_)
                                            (let ((_%__splice4884448845%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4627646430%_
                                                    '0)))
                                              (let ((_%tl4629546347%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4884448845%_
                                                        '1)))
                                                    (_%target4629346344%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4884448845%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4629546347%_)
                                                    (_%__match4889248893%_
                                                     _%e4627146413%_
                                                     _%hd4627246417%_
                                                     _%tl4627346420%_
                                                     _%e4627446423%_
                                                     _%hd4627546427%_
                                                     _%tl4627646430%_
                                                     _%e4629046334%_
                                                     _%hd4629146338%_
                                                     _%tl4629246341%_
                                                     _%__splice4884448845%_
                                                     _%target4629346344%_
                                                     _%tl4629546347%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4626746307%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4626746307%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4626746307%_))))))
                        (let () (declare (not safe)) (_%g4626746307%_)))))
                (let () (declare (not safe)) (_%g4626746307%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_%$stx46465%_)
      (let* ((_%__stx4889548896%_ _%$stx46465%_)
             (_%g4647046510%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4889548896%_))))
        (let ((_%__kont4889848899%_
               (lambda (_%g4647246646%_ _%g4647346648%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g4647346648%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _%g4647246646%_ '()))
                                   '())))))
              (_%__kont4890048901%_
               (lambda (_%g4648346575%_
                        _%g4648446577%_
                        _%g4648546578%_
                        _%g4648646579%_)
                 (cons _%g4648646579%_
                       (cons _%g4648546578%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g4648446577%_
                                               (foldr (lambda (_%g4660046603%_
                                                               _%g4660146606%_)
                                                        (cons _%g4660046603%_
                                                              _%g4660146606%_))
                                                      '()
                                                      _%g4648346575%_)))
                                   '()))))))
          (let* ((_%__match4895048951%_
                  (lambda (_%e4648746517%_
                           _%hd4648846521%_
                           _%tl4648946524%_
                           _%e4649046527%_
                           _%hd4649146531%_
                           _%tl4649246534%_
                           _%e4649346537%_
                           _%hd4649446541%_
                           _%tl4649546544%_
                           _%__splice4890248903%_
                           _%target4649646547%_
                           _%tl4649846550%_)
                    (letrec ((_%loop4649946553%_
                              (lambda (_%hd4649746557%_ _%body4650346560%_)
                                (if (gx#stx-pair? _%hd4649746557%_)
                                    (let ((_%e4650046562%_
                                           (gx#syntax-e _%hd4649746557%_)))
                                      (let ((_%lp-tl4650246569%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4650046562%_)))
                                            (_%lp-hd4650146566%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4650046562%_))))
                                        (_%loop4649946553%_
                                         _%lp-tl4650246569%_
                                         (cons _%lp-hd4650146566%_
                                               _%body4650346560%_))))
                                    (let ((_%body4650446572%_
                                           (reverse _%body4650346560%_)))
                                      (let ((_%g4648346575%_
                                             _%body4650446572%_)
                                            (_%g4648446577%_ _%tl4649546544%_)
                                            (_%g4648546578%_ _%hd4649446541%_)
                                            (_%g4648646579%_ _%hd4648846521%_))
                                        (if (gx#identifier? _%g4648546578%_)
                                            (_%__kont4890048901%_
                                             _%g4648346575%_
                                             _%g4648446577%_
                                             _%g4648546578%_
                                             _%g4648646579%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4647046510%_)))))))))
                      (_%loop4649946553%_ _%target4649646547%_ '()))))
                 (_%__match4892448925%_
                  (lambda (_%e4647446616%_
                           _%hd4647546620%_
                           _%tl4647646623%_
                           _%e4647746626%_
                           _%hd4647846630%_
                           _%tl4647946633%_
                           _%e4648046636%_
                           _%hd4648146640%_
                           _%tl4648246643%_)
                    (let ((_%g4647246646%_ _%hd4648146640%_)
                          (_%g4647346648%_ _%hd4647846630%_))
                      (if (gx#identifier? _%g4647346648%_)
                          (_%__kont4889848899%_
                           _%g4647246646%_
                           _%g4647346648%_)
                          (if (gx#stx-pair? _%hd4647846630%_)
                              (let ((_%e4649346537%_
                                     (gx#syntax-e _%hd4647846630%_)))
                                (let ((_%tl4649546544%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4649346537%_)))
                                      (_%hd4649446541%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4649346537%_))))
                                  (if (gx#stx-pair/null? _%tl4647946633%_)
                                      (let ((_%__splice4890248903%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4647946633%_
                                              '0)))
                                        (let ((_%tl4649846550%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4890248903%_
                                                  '1)))
                                              (_%target4649646547%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4890248903%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4649846550%_)
                                              (_%__match4895048951%_
                                               _%e4647446616%_
                                               _%hd4647546620%_
                                               _%tl4647646623%_
                                               _%e4647746626%_
                                               _%hd4647846630%_
                                               _%tl4647946633%_
                                               _%e4649346537%_
                                               _%hd4649446541%_
                                               _%tl4649546544%_
                                               _%__splice4890248903%_
                                               _%target4649646547%_
                                               _%tl4649846550%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4647046510%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4647046510%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4647046510%_))))))))
            (if (gx#stx-pair? _%__stx4889548896%_)
                (let ((_%e4647446616%_ (gx#syntax-e _%__stx4889548896%_)))
                  (let ((_%tl4647646623%_
                         (let () (declare (not safe)) (##cdr _%e4647446616%_)))
                        (_%hd4647546620%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4647446616%_))))
                    (if (gx#stx-pair? _%tl4647646623%_)
                        (let ((_%e4647746626%_ (gx#syntax-e _%tl4647646623%_)))
                          (let ((_%tl4647946633%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4647746626%_)))
                                (_%hd4647846630%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4647746626%_))))
                            (if (gx#stx-pair? _%tl4647946633%_)
                                (let ((_%e4648046636%_
                                       (gx#syntax-e _%tl4647946633%_)))
                                  (let ((_%tl4648246643%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4648046636%_)))
                                        (_%hd4648146640%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4648046636%_))))
                                    (if (gx#stx-null? _%tl4648246643%_)
                                        (_%__match4892448925%_
                                         _%e4647446616%_
                                         _%hd4647546620%_
                                         _%tl4647646623%_
                                         _%e4647746626%_
                                         _%hd4647846630%_
                                         _%tl4647946633%_
                                         _%e4648046636%_
                                         _%hd4648146640%_
                                         _%tl4648246643%_)
                                        (if (gx#stx-pair? _%hd4647846630%_)
                                            (let ((_%e4649346537%_
                                                   (gx#syntax-e
                                                    _%hd4647846630%_)))
                                              (let ((_%tl4649546544%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4649346537%_)))
                                                    (_%hd4649446541%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4649346537%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4647946633%_)
                                                    (let ((_%__splice4890248903%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4647946633%_
                                                            '0)))
                                                      (let ((_%tl4649846550%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4890248903%_ '1)))
                    (_%target4649646547%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4890248903%_ '0))))
                (if (gx#stx-null? _%tl4649846550%_)
                    (_%__match4895048951%_
                     _%e4647446616%_
                     _%hd4647546620%_
                     _%tl4647646623%_
                     _%e4647746626%_
                     _%hd4647846630%_
                     _%tl4647946633%_
                     _%e4649346537%_
                     _%hd4649446541%_
                     _%tl4649546544%_
                     _%__splice4890248903%_
                     _%target4649646547%_
                     _%tl4649846550%_)
                    (let () (declare (not safe)) (_%g4647046510%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4647046510%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4647046510%_))))))
                                (if (gx#stx-pair? _%hd4647846630%_)
                                    (let ((_%e4649346537%_
                                           (gx#syntax-e _%hd4647846630%_)))
                                      (let ((_%tl4649546544%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4649346537%_)))
                                            (_%hd4649446541%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4649346537%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4647946633%_)
                                            (let ((_%__splice4890248903%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4647946633%_
                                                    '0)))
                                              (let ((_%tl4649846550%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4890248903%_
                                                        '1)))
                                                    (_%target4649646547%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4890248903%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4649846550%_)
                                                    (_%__match4895048951%_
                                                     _%e4647446616%_
                                                     _%hd4647546620%_
                                                     _%tl4647646623%_
                                                     _%e4647746626%_
                                                     _%hd4647846630%_
                                                     _%tl4647946633%_
                                                     _%e4649346537%_
                                                     _%hd4649446541%_
                                                     _%tl4649546544%_
                                                     _%__splice4890248903%_
                                                     _%target4649646547%_
                                                     _%tl4649846550%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4647046510%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4647046510%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4647046510%_))))))
                        (let () (declare (not safe)) (_%g4647046510%_)))))
                (let () (declare (not safe)) (_%g4647046510%_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_%stx46668%_)
       (let* ((_%g4667146691%_
               (lambda (_%g4667246687%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4667246687%_)))
              (_%g4667046760%_
               (lambda (_%g4667246695%_)
                 (if (gx#stx-pair? _%g4667246695%_)
                     (let ((_%e4667446698%_ (gx#syntax-e _%g4667246695%_)))
                       (let ((_%hd4667546702%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4667446698%_)))
                             (_%tl4667646705%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4667446698%_))))
                         (if (gx#stx-pair/null? _%tl4667646705%_)
                             (let ((_g49045_
                                    (gx#syntax-split-splice
                                     _%tl4667646705%_
                                     '0)))
                               (begin
                                 (let ((_g49046_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g49045_)
                                              (##values-length _g49045_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g49046_ 2)))
                                       (error "Context expects 2 values"
                                              _g49046_)))
                                 (let ((_%target4667746708%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g49045_ 0)))
                                       (_%tl4667946711%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g49045_ 1))))
                                   (if (gx#stx-null? _%tl4667946711%_)
                                       (letrec ((_%loop4668046714%_
                                                 (lambda (_%hd4667846718%_
                                                          _%body4668446721%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4667846718%_)
                                                       (let ((_%e4668146723%_
                                                              (gx#syntax-e
                                                               _%hd4667846718%_)))
                                                         (let ((_%lp-hd4668246727%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4668146723%_)))
                       (_%lp-tl4668346730%_
                        (let () (declare (not safe)) (##cdr _%e4668146723%_))))
                   (_%loop4668046714%_
                    _%lp-tl4668346730%_
                    (cons _%lp-hd4668246727%_ _%body4668446721%_))))
               (let ((_%body4668546733%_ (reverse _%body4668446721%_)))
                 ((lambda (_%g4667346736%_)
                    (cons 'phi:
                          (cons '1
                                (foldr (lambda (_%g4675146754%_
                                                _%g4675246757%_)
                                         (cons _%g4675146754%_
                                               _%g4675246757%_))
                                       '()
                                       _%g4667346736%_))))
                  _%body4668546733%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4668046714%_
                                          _%target4667746708%_
                                          '()))
                                       (_%g4667146691%_ _%g4667246695%_)))))
                             (_%g4667146691%_ _%g4667246695%_))))
                     (_%g4667146691%_ _%g4667246695%_)))))
         (_%g4667046760%_ _%stx46668%_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_%stx46765%_)
       (let* ((_%g4676846788%_
               (lambda (_%g4676946784%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4676946784%_)))
              (_%g4676746857%_
               (lambda (_%g4676946792%_)
                 (if (gx#stx-pair? _%g4676946792%_)
                     (let ((_%e4677146795%_ (gx#syntax-e _%g4676946792%_)))
                       (let ((_%hd4677246799%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4677146795%_)))
                             (_%tl4677346802%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4677146795%_))))
                         (if (gx#stx-pair/null? _%tl4677346802%_)
                             (let ((_g49047_
                                    (gx#syntax-split-splice
                                     _%tl4677346802%_
                                     '0)))
                               (begin
                                 (let ((_g49048_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g49047_)
                                              (##values-length _g49047_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g49048_ 2)))
                                       (error "Context expects 2 values"
                                              _g49048_)))
                                 (let ((_%target4677446805%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g49047_ 0)))
                                       (_%tl4677646808%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g49047_ 1))))
                                   (if (gx#stx-null? _%tl4677646808%_)
                                       (letrec ((_%loop4677746811%_
                                                 (lambda (_%hd4677546815%_
                                                          _%body4678146818%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4677546815%_)
                                                       (let ((_%e4677846820%_
                                                              (gx#syntax-e
                                                               _%hd4677546815%_)))
                                                         (let ((_%lp-hd4677946824%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4677846820%_)))
                       (_%lp-tl4678046827%_
                        (let () (declare (not safe)) (##cdr _%e4677846820%_))))
                   (_%loop4677746811%_
                    _%lp-tl4678046827%_
                    (cons _%lp-hd4677946824%_ _%body4678146818%_))))
               (let ((_%body4678246830%_ (reverse _%body4678146818%_)))
                 ((lambda (_%g4677046833%_)
                    (cons 'phi:
                          (cons '-1
                                (foldr (lambda (_%g4684846851%_
                                                _%g4684946854%_)
                                         (cons _%g4684846851%_
                                               _%g4684946854%_))
                                       '()
                                       _%g4677046833%_))))
                  _%body4678246830%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4677746811%_
                                          _%target4677446805%_
                                          '()))
                                       (_%g4676846788%_ _%g4676946792%_)))))
                             (_%g4676846788%_ _%g4676946792%_))))
                     (_%g4676846788%_ _%g4676946792%_)))))
         (_%g4676746857%_ _%stx46765%_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_%stx46862%_)
       (let* ((_%g4686546889%_
               (lambda (_%g4686646885%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4686646885%_)))
              (_%g4686447015%_
               (lambda (_%g4686646893%_)
                 (if (gx#stx-pair? _%g4686646893%_)
                     (let ((_%e4686946896%_ (gx#syntax-e _%g4686646893%_)))
                       (let ((_%hd4687046900%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4686946896%_)))
                             (_%tl4687146903%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4686946896%_))))
                         (if (gx#stx-pair? _%tl4687146903%_)
                             (let ((_%e4687246906%_
                                    (gx#syntax-e _%tl4687146903%_)))
                               (let ((_%hd4687346910%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4687246906%_)))
                                     (_%tl4687446913%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4687246906%_))))
                                 (if (gx#stx-pair/null? _%tl4687446913%_)
                                     (let ((_g49049_
                                            (gx#syntax-split-splice
                                             _%tl4687446913%_
                                             '0)))
                                       (begin
                                         (let ((_g49050_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49049_)
                                                      (##values-length
                                                       _g49049_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49050_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49050_)))
                                         (let ((_%target4687546916%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49049_ 0)))
                                               (_%tl4687746919%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49049_ 1))))
                                           (if (gx#stx-null? _%tl4687746919%_)
                                               (letrec ((_%loop4687846922%_
                                                         (lambda (_%hd4687646926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4688246929%_)
                   (if (gx#stx-pair? _%hd4687646926%_)
                       (let ((_%e4687946931%_ (gx#syntax-e _%hd4687646926%_)))
                         (let ((_%lp-hd4688046935%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4687946931%_)))
                               (_%lp-tl4688146938%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4687946931%_))))
                           (_%loop4687846922%_
                            _%lp-tl4688146938%_
                            (cons _%lp-hd4688046935%_ _%id4688246929%_))))
                       (let ((_%id4688346941%_ (reverse _%id4688246929%_)))
                         ((lambda (_%g4686746944%_ _%g4686846946%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4696346966%_
                                                 _%g4696446969%_)
                                          (cons _%g4696346966%_
                                                _%g4696446969%_))
                                        '()
                                        _%g4686746944%_))
                                (let* ((_%keys46980%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4697146974%_
                                                         _%g4697246977%_)
                                                  (cons _%g4697146974%_
                                                        _%g4697246977%_))
                                                '()
                                                _%g4686746944%_)))
                                       (_%keytab46991%_
                                        (let ((_%ht46983%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4698546987%_)
                                             (hash-put!
                                              _%ht46983%_
                                              _%g4698546987%_
                                              '#t))
                                           _%keys46980%_)
                                          _%ht46983%_))
                                       (_%imports46994%_
                                        (gx#core-expand-import-source
                                         _%g4686846946%_))
                                       (_%fold-e47010%_
                                        (letrec ((_%fold-e46997%_
                                                  (lambda (_%in47000%_
                                                           _%r47002%_)
                                                    (if (gx#module-import?
                                                         _%in47000%_)
                                                        (if (hash-get
                                                             _%keytab46991%_
                                                             (gx#module-import-name
                                                              _%in47000%_))
                                                            (cons _%in47000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r47002%_)
                    _%r47002%_)
                (if (gx#import-set? _%in47000%_)
                    (foldl _%fold-e46997%_
                           _%r47002%_
                           (gx#import-set-imports _%in47000%_))
                    _%r47002%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e46997%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e47010%_
                                               '()
                                               _%imports46994%_)))
                                (_%g4686546889%_ _%g4686646893%_)))
                          _%id4688346941%_
                          _%hd4687346910%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4687846922%_
                                                  _%target4687546916%_
                                                  '()))
                                               (_%g4686546889%_
                                                _%g4686646893%_)))))
                                     (_%g4686546889%_ _%g4686646893%_))))
                             (_%g4686546889%_ _%g4686646893%_))))
                     (_%g4686546889%_ _%g4686646893%_)))))
         (_%g4686447015%_ _%stx46862%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_%stx47020%_)
       (let* ((_%g4702347047%_
               (lambda (_%g4702447043%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4702447043%_)))
              (_%g4702247173%_
               (lambda (_%g4702447051%_)
                 (if (gx#stx-pair? _%g4702447051%_)
                     (let ((_%e4702747054%_ (gx#syntax-e _%g4702447051%_)))
                       (let ((_%hd4702847058%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4702747054%_)))
                             (_%tl4702947061%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4702747054%_))))
                         (if (gx#stx-pair? _%tl4702947061%_)
                             (let ((_%e4703047064%_
                                    (gx#syntax-e _%tl4702947061%_)))
                               (let ((_%hd4703147068%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4703047064%_)))
                                     (_%tl4703247071%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4703047064%_))))
                                 (if (gx#stx-pair/null? _%tl4703247071%_)
                                     (let ((_g49051_
                                            (gx#syntax-split-splice
                                             _%tl4703247071%_
                                             '0)))
                                       (begin
                                         (let ((_g49052_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49051_)
                                                      (##values-length
                                                       _g49051_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49052_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49052_)))
                                         (let ((_%target4703347074%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49051_ 0)))
                                               (_%tl4703547077%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49051_ 1))))
                                           (if (gx#stx-null? _%tl4703547077%_)
                                               (letrec ((_%loop4703647080%_
                                                         (lambda (_%hd4703447084%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4704047087%_)
                   (if (gx#stx-pair? _%hd4703447084%_)
                       (let ((_%e4703747089%_ (gx#syntax-e _%hd4703447084%_)))
                         (let ((_%lp-hd4703847093%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4703747089%_)))
                               (_%lp-tl4703947096%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4703747089%_))))
                           (_%loop4703647080%_
                            _%lp-tl4703947096%_
                            (cons _%lp-hd4703847093%_ _%id4704047087%_))))
                       (let ((_%id4704147099%_ (reverse _%id4704047087%_)))
                         ((lambda (_%g4702547102%_ _%g4702647104%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4712147124%_
                                                 _%g4712247127%_)
                                          (cons _%g4712147124%_
                                                _%g4712247127%_))
                                        '()
                                        _%g4702547102%_))
                                (let* ((_%keys47138%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4712947132%_
                                                         _%g4713047135%_)
                                                  (cons _%g4712947132%_
                                                        _%g4713047135%_))
                                                '()
                                                _%g4702547102%_)))
                                       (_%keytab47149%_
                                        (let ((_%ht47141%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4714347145%_)
                                             (hash-put!
                                              _%ht47141%_
                                              _%g4714347145%_
                                              '#t))
                                           _%keys47138%_)
                                          _%ht47141%_))
                                       (_%imports47152%_
                                        (gx#core-expand-import-source
                                         _%g4702647104%_))
                                       (_%fold-e47168%_
                                        (letrec ((_%fold-e47155%_
                                                  (lambda (_%in47158%_
                                                           _%r47160%_)
                                                    (if (gx#module-import?
                                                         _%in47158%_)
                                                        (if (hash-get
                                                             _%keytab47149%_
                                                             (gx#module-import-name
                                                              _%in47158%_))
                                                            _%r47160%_
                                                            (cons _%in47158%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r47160%_))
                (if (gx#import-set? _%in47158%_)
                    (foldl _%fold-e47155%_
                           _%r47160%_
                           (gx#import-set-imports _%in47158%_))
                    (cons _%in47158%_ _%r47160%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47155%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e47168%_
                                               '()
                                               _%imports47152%_)))
                                (_%g4702347047%_ _%g4702447051%_)))
                          _%id4704147099%_
                          _%hd4703147068%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4703647080%_
                                                  _%target4703347074%_
                                                  '()))
                                               (_%g4702347047%_
                                                _%g4702447051%_)))))
                                     (_%g4702347047%_ _%g4702447051%_))))
                             (_%g4702347047%_ _%g4702447051%_))))
                     (_%g4702347047%_ _%g4702447051%_)))))
         (_%g4702247173%_ _%stx47020%_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_%in47225%_ _%rename47227%_)
      (gx#make-module-import
       (gx#module-import-source _%in47225%_)
       _%rename47227%_
       (gx#module-import-phi _%in47225%_)
       (gx#module-import-weak? _%in47225%_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_%name47178%_ _%pre47180%_)
      (let* ((_%name4718147189%_ _%name47178%_)
             (_%else4718347201%_
              (lambda () (make-symbol _%pre47180%_ _%name47178%_)))
             (_%K4718547209%_
              (lambda (_%mark47205%_ _%id47207%_)
                (cons (make-symbol _%pre47180%_ _%id47207%_) _%mark47205%_))))
        (if (pair? _%name4718147189%_)
            (let ((_%hd4718647213%_
                   (let () (declare (not safe)) (##car _%name4718147189%_)))
                  (_%tl4718747216%_
                   (let () (declare (not safe)) (##cdr _%name4718147189%_))))
              (let* ((_%id47219%_ _%hd4718647213%_)
                     (_%mark47222%_ _%tl4718747216%_))
                (_%K4718547209%_ _%mark47222%_ _%id47219%_)))
            (_%else4718347201%_)))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_%stx47229%_)
       (let* ((_%g4723247265%_
               (lambda (_%g4723347261%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4723347261%_)))
              (_%g4723147456%_
               (lambda (_%g4723347269%_)
                 (if (gx#stx-pair? _%g4723347269%_)
                     (let ((_%e4723747272%_ (gx#syntax-e _%g4723347269%_)))
                       (let ((_%hd4723847276%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4723747272%_)))
                             (_%tl4723947279%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4723747272%_))))
                         (if (gx#stx-pair? _%tl4723947279%_)
                             (let ((_%e4724047282%_
                                    (gx#syntax-e _%tl4723947279%_)))
                               (let ((_%hd4724147286%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4724047282%_)))
                                     (_%tl4724247289%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4724047282%_))))
                                 (if (gx#stx-pair/null? _%tl4724247289%_)
                                     (let ((_g49053_
                                            (gx#syntax-split-splice
                                             _%tl4724247289%_
                                             '0)))
                                       (begin
                                         (let ((_g49054_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49053_)
                                                      (##values-length
                                                       _g49053_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49054_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49054_)))
                                         (let ((_%target4724347292%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49053_ 0)))
                                               (_%tl4724547295%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49053_ 1))))
                                           (if (gx#stx-null? _%tl4724547295%_)
                                               (letrec ((_%loop4724647298%_
                                                         (lambda (_%hd4724447302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4725047305%_
                          _%id4725147306%_)
                   (if (gx#stx-pair? _%hd4724447302%_)
                       (let ((_%e4724747308%_ (gx#syntax-e _%hd4724447302%_)))
                         (let ((_%lp-hd4724847312%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4724747308%_)))
                               (_%lp-tl4724947315%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4724747308%_))))
                           (if (gx#stx-pair? _%lp-hd4724847312%_)
                               (let ((_%e4725447318%_
                                      (gx#syntax-e _%lp-hd4724847312%_)))
                                 (let ((_%hd4725547322%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4725447318%_)))
                                       (_%tl4725647325%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4725447318%_))))
                                   (if (gx#stx-pair? _%tl4725647325%_)
                                       (let ((_%e4725747328%_
                                              (gx#syntax-e _%tl4725647325%_)))
                                         (let ((_%hd4725847332%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4725747328%_)))
                                               (_%tl4725947335%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4725747328%_))))
                                           (if (gx#stx-null? _%tl4725947335%_)
                                               (_%loop4724647298%_
                                                _%lp-tl4724947315%_
                                                (cons _%hd4725847332%_
                                                      _%new-id4725047305%_)
                                                (cons _%hd4725547322%_
                                                      _%id4725147306%_))
                                               (_%g4723247265%_
                                                _%g4723347269%_))))
                                       (_%g4723247265%_ _%g4723347269%_))))
                               (_%g4723247265%_ _%g4723347269%_))))
                       (let ((_%new-id4725247338%_
                              (reverse _%new-id4725047305%_))
                             (_%id4725347340%_ (reverse _%id4725147306%_)))
                         ((lambda (_%g4723447342%_
                                   _%g4723547344%_
                                   _%g4723647345%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4736347366%_
                                                      _%g4736447369%_)
                                               (cons _%g4736347366%_
                                                     _%g4736447369%_))
                                             '()
                                             _%g4723547344%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4737147374%_
                                                      _%g4737247377%_)
                                               (cons _%g4737147374%_
                                                     _%g4737247377%_))
                                             '()
                                             _%g4723447342%_)))
                                (let* ((_%keytab47380%_ (make-hash-table))
                                       (_%found47383%_ (make-hash-table))
                                       (_%_47406%_
                                        (for-each
                                         (lambda (_%id47386%_ _%new-id47388%_)
                                           (hash-put!
                                            _%keytab47380%_
                                            (gx#core-identifier-key
                                             _%id47386%_)
                                            (gx#core-identifier-key
                                             _%new-id47388%_)))
                                         (foldr (lambda (_%g4738947392%_
                                                         _%g4739047395%_)
                                                  (cons _%g4738947392%_
                                                        _%g4739047395%_))
                                                '()
                                                _%g4723547344%_)
                                         (foldr (lambda (_%g4739747400%_
                                                         _%g4739847403%_)
                                                  (cons _%g4739747400%_
                                                        _%g4739847403%_))
                                                '()
                                                _%g4723447342%_)))
                                       (_%imports47409%_
                                        (gx#core-expand-import-source
                                         _%g4723647345%_))
                                       (_%fold-e47437%_
                                        (letrec ((_%fold-e47412%_
                                                  (lambda (_%in47415%_
                                                           _%r47417%_)
                                                    (if (gx#module-import?
                                                         _%in47415%_)
                                                        (let* ((_%name47421%_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in47415%_))
                       (_%$e47424%_ (hash-get _%keytab47380%_ _%name47421%_)))
                  (if _%$e47424%_
                      ((lambda (_%rename47428%_)
                         (hash-put! _%found47383%_ _%name47421%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                _%in47415%_
                                _%rename47428%_)
                               _%r47417%_))
                       _%$e47424%_)
                      (cons _%in47415%_ _%r47417%_)))
                (if (gx#import-set? _%in47415%_)
                    (foldl _%fold-e47412%_
                           _%r47417%_
                           (gx#import-set-imports _%in47415%_))
                    (cons _%in47415%_ _%r47417%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47412%_))
                                       (_%new-imports47440%_
                                        (foldl _%fold-e47437%_
                                               '()
                                               _%imports47409%_)))
                                  (for-each
                                   (lambda (_%id47445%_)
                                     (if (hash-get
                                          _%found47383%_
                                          (gx#core-identifier-key _%id47445%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _%stx47229%_
                                          _%id47445%_)))
                                   (foldr (lambda (_%g4744747450%_
                                                   _%g4744847453%_)
                                            (cons _%g4744747450%_
                                                  _%g4744847453%_))
                                          '()
                                          _%g4723547344%_))
                                  (cons 'begin: _%new-imports47440%_))
                                (_%g4723247265%_ _%g4723347269%_)))
                          _%new-id4725247338%_
                          _%id4725347340%_
                          _%hd4724147286%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4724647298%_
                                                  _%target4724347292%_
                                                  '()
                                                  '()))
                                               (_%g4723247265%_
                                                _%g4723347269%_)))))
                                     (_%g4723247265%_ _%g4723347269%_))))
                             (_%g4723247265%_ _%g4723347269%_))))
                     (_%g4723247265%_ _%g4723347269%_)))))
         (_%g4723147456%_ _%stx47229%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_%stx47461%_)
       (let* ((_%g4746447482%_
               (lambda (_%g4746547478%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4746547478%_)))
              (_%g4746347567%_
               (lambda (_%g4746547486%_)
                 (if (gx#stx-pair? _%g4746547486%_)
                     (let ((_%e4746847489%_ (gx#syntax-e _%g4746547486%_)))
                       (let ((_%hd4746947493%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4746847489%_)))
                             (_%tl4747047496%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4746847489%_))))
                         (if (gx#stx-pair? _%tl4747047496%_)
                             (let ((_%e4747147499%_
                                    (gx#syntax-e _%tl4747047496%_)))
                               (let ((_%hd4747247503%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4747147499%_)))
                                     (_%tl4747347506%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4747147499%_))))
                                 (if (gx#stx-pair? _%tl4747347506%_)
                                     (let ((_%e4747447509%_
                                            (gx#syntax-e _%tl4747347506%_)))
                                       (let ((_%hd4747547513%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4747447509%_)))
                                             (_%tl4747647516%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4747447509%_))))
                                         (if (gx#stx-null? _%tl4747647516%_)
                                             ((lambda (_%g4746647519%_
                                                       _%g4746747521%_)
                                                (if (gx#identifier?
                                                     _%g4746647519%_)
                                                    (let* ((_%pre47537%_
                                                            (gx#stx-e
                                                             _%g4746647519%_))
                                                           (_%imports47540%_
                                                            (gx#core-expand-import-source
                                                             _%g4746747521%_))
                                                           (_%rename-e47546%_
                                                            (lambda (_%name47543%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name47543%_
                                                               _%pre47537%_)))
                                                           (_%fold-e47562%_
                                                            (letrec ((_%fold-e47549%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%in47552%_ _%r47554%_)
                                (if (gx#module-import? _%in47552%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                           _%in47552%_
                                           (_%rename-e47546%_
                                            (gx#module-import-name
                                             _%in47552%_)))
                                          _%r47554%_)
                                    (if (gx#import-set? _%in47552%_)
                                        (foldl _%fold-e47549%_
                                               _%r47554%_
                                               (gx#import-set-imports
                                                _%in47552%_))
                                        (cons _%in47552%_ _%r47554%_))))))
                      _%fold-e47549%_)))
              (cons 'begin: (foldl _%fold-e47562%_ '() _%imports47540%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4746447482%_
                                                     _%g4746547486%_)))
                                              _%hd4747547513%_
                                              _%hd4747247503%_)
                                             (_%g4746447482%_
                                              _%g4746547486%_))))
                                     (_%g4746447482%_ _%g4746547486%_))))
                             (_%g4746447482%_ _%g4746547486%_))))
                     (_%g4746447482%_ _%g4746547486%_)))))
         (_%g4746347567%_ _%stx47461%_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_%stx47571%_)
       (letrec ((_%flatten47574%_
                 (lambda (_%list-of-lists47825%_)
                   (foldr (lambda (_%v47828%_ _%acc47830%_)
                            (if (null? _%v47828%_)
                                _%acc47830%_
                                (if (pair? _%v47828%_)
                                    (append (_%flatten47574%_ _%v47828%_)
                                            _%acc47830%_)
                                    (cons _%v47828%_ _%acc47830%_))))
                          '()
                          _%list-of-lists47825%_)))
                (_%expand-path47576%_
                 (lambda (_%top47695%_ _%mod47697%_)
                   (let* ((_%__stx4895348954%_ _%mod47697%_)
                          (_%g4770047722%_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%__stx4895348954%_))))
                     (let ((_%__kont4895648957%_
                            (lambda (_%g4770247788%_ _%g4770347790%_)
                              (map (lambda (_%mod47805%_)
                                     (gx#stx-identifier
                                      _%top47695%_
                                      _%top47695%_
                                      '"/"
                                      _%mod47805%_))
                                   (_%flatten47574%_
                                    (map (lambda (_%g4780747809%_)
                                           (_%expand-path47576%_
                                            _%g4770347790%_
                                            _%g4780747809%_))
                                         (foldr (lambda (_%g4781247815%_
                                                         _%g4781347818%_)
                                                  (cons _%g4781247815%_
                                                        _%g4781347818%_))
                                                '()
                                                _%g4770247788%_))))))
                           (_%__kont4896048961%_
                            (lambda (_%g4771647729%_)
                              (gx#stx-identifier
                               _%top47695%_
                               _%top47695%_
                               '"/"
                               _%g4771647729%_))))
                       (let* ((_%g4769947743%_
                               (lambda ()
                                 (let ((_%g4771647729%_ _%__stx4895348954%_))
                                   (if (or (gx#identifier? _%g4771647729%_)
                                           (gx#stx-fixnum? _%g4771647729%_))
                                       (_%__kont4896048961%_ _%g4771647729%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4770047722%_))))))
                              (_%__match4897648977%_
                               (lambda (_%e4770447750%_
                                        _%hd4770547754%_
                                        _%tl4770647757%_
                                        _%__splice4895848959%_
                                        _%target4770747760%_
                                        _%tl4770947763%_)
                                 (letrec ((_%loop4771047766%_
                                           (lambda (_%hd4770847770%_
                                                    _%mod4771447773%_)
                                             (if (gx#stx-pair?
                                                  _%hd4770847770%_)
                                                 (let ((_%e4771147775%_
                                                        (gx#syntax-e
                                                         _%hd4770847770%_)))
                                                   (let ((_%lp-tl4771347782%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4771147775%_)))
                                                         (_%lp-hd4771247779%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4771147775%_))))
                                                     (_%loop4771047766%_
                                                      _%lp-tl4771347782%_
                                                      (cons _%lp-hd4771247779%_
                                                            _%mod4771447773%_))))
                                                 (let ((_%mod4771547785%_
                                                        (reverse _%mod4771447773%_)))
                                                   (_%__kont4895648957%_
                                                    _%mod4771547785%_
                                                    _%hd4770547754%_))))))
                                   (_%loop4771047766%_
                                    _%target4770747760%_
                                    '())))))
                         (if (gx#stx-pair? _%__stx4895348954%_)
                             (let ((_%e4770447750%_
                                    (gx#syntax-e _%__stx4895348954%_)))
                               (let ((_%tl4770647757%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4770447750%_)))
                                     (_%hd4770547754%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4770447750%_))))
                                 (if (gx#stx-pair/null? _%tl4770647757%_)
                                     (let ((_%__splice4895848959%_
                                            (gx#syntax-split-splice->vector
                                             _%tl4770647757%_
                                             '0)))
                                       (let ((_%tl4770947763%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4895848959%_
                                                 '1)))
                                             (_%target4770747760%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4895848959%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4770947763%_)
                                             (_%__match4897648977%_
                                              _%e4770447750%_
                                              _%hd4770547754%_
                                              _%tl4770647757%_
                                              _%__splice4895848959%_
                                              _%target4770747760%_
                                              _%tl4770947763%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4769947743%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4769947743%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4769947743%_)))))))))
         (let* ((_%g4757847602%_
                 (lambda (_%g4757947598%_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%g4757947598%_)))
                (_%g4757747691%_
                 (lambda (_%g4757947606%_)
                   (if (gx#stx-pair? _%g4757947606%_)
                       (let ((_%e4758247609%_ (gx#syntax-e _%g4757947606%_)))
                         (let ((_%hd4758347613%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4758247609%_)))
                               (_%tl4758447616%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4758247609%_))))
                           (if (gx#stx-pair? _%tl4758447616%_)
                               (let ((_%e4758547619%_
                                      (gx#syntax-e _%tl4758447616%_)))
                                 (let ((_%hd4758647623%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4758547619%_)))
                                       (_%tl4758747626%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4758547619%_))))
                                   (if (gx#stx-pair/null? _%tl4758747626%_)
                                       (let ((_g49055_
                                              (gx#syntax-split-splice
                                               _%tl4758747626%_
                                               '0)))
                                         (begin
                                           (let ((_g49056_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g49055_)
                                                        (##values-length
                                                         _g49055_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g49056_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g49056_)))
                                           (let ((_%target4758847629%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g49055_ 0)))
                                                 (_%tl4759047632%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g49055_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl4759047632%_)
                                                 (letrec ((_%loop4759147635%_
                                                           (lambda (_%hd4758947639%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%mod4759547642%_)
                     (if (gx#stx-pair? _%hd4758947639%_)
                         (let ((_%e4759247644%_
                                (gx#syntax-e _%hd4758947639%_)))
                           (let ((_%lp-hd4759347648%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4759247644%_)))
                                 (_%lp-tl4759447651%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4759247644%_))))
                             (_%loop4759147635%_
                              _%lp-tl4759447651%_
                              (cons _%lp-hd4759347648%_ _%mod4759547642%_))))
                         (let ((_%mod4759647654%_ (reverse _%mod4759547642%_)))
                           ((lambda (_%g4758047657%_ _%g4758147659%_)
                              (cons 'begin:
                                    (_%flatten47574%_
                                     (map (lambda (_%g4767747679%_)
                                            (_%expand-path47576%_
                                             _%g4758147659%_
                                             _%g4767747679%_))
                                          (foldr (lambda (_%g4768247685%_
                                                          _%g4768347688%_)
                                                   (cons _%g4768247685%_
                                                         _%g4768347688%_))
                                                 '()
                                                 _%g4758047657%_)))))
                            _%mod4759647654%_
                            _%hd4758647623%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop4759147635%_
                                                    _%target4758847629%_
                                                    '()))
                                                 (_%g4757847602%_
                                                  _%g4757947606%_)))))
                                       (_%g4757847602%_ _%g4757947606%_))))
                               (_%g4757847602%_ _%g4757947606%_))))
                       (_%g4757847602%_ _%g4757947606%_)))))
           (_%g4757747691%_ _%stx47571%_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_%stx47840%_)
       (let* ((_%g4784347867%_
               (lambda (_%g4784447863%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4784447863%_)))
              (_%g4784247993%_
               (lambda (_%g4784447871%_)
                 (if (gx#stx-pair? _%g4784447871%_)
                     (let ((_%e4784747874%_ (gx#syntax-e _%g4784447871%_)))
                       (let ((_%hd4784847878%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4784747874%_)))
                             (_%tl4784947881%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4784747874%_))))
                         (if (gx#stx-pair? _%tl4784947881%_)
                             (let ((_%e4785047884%_
                                    (gx#syntax-e _%tl4784947881%_)))
                               (let ((_%hd4785147888%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4785047884%_)))
                                     (_%tl4785247891%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4785047884%_))))
                                 (if (gx#stx-pair/null? _%tl4785247891%_)
                                     (let ((_g49057_
                                            (gx#syntax-split-splice
                                             _%tl4785247891%_
                                             '0)))
                                       (begin
                                         (let ((_g49058_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49057_)
                                                      (##values-length
                                                       _g49057_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49058_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49058_)))
                                         (let ((_%target4785347894%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49057_ 0)))
                                               (_%tl4785547897%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49057_ 1))))
                                           (if (gx#stx-null? _%tl4785547897%_)
                                               (letrec ((_%loop4785647900%_
                                                         (lambda (_%hd4785447904%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4786047907%_)
                   (if (gx#stx-pair? _%hd4785447904%_)
                       (let ((_%e4785747909%_ (gx#syntax-e _%hd4785447904%_)))
                         (let ((_%lp-hd4785847913%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4785747909%_)))
                               (_%lp-tl4785947916%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4785747909%_))))
                           (_%loop4785647900%_
                            _%lp-tl4785947916%_
                            (cons _%lp-hd4785847913%_ _%id4786047907%_))))
                       (let ((_%id4786147919%_ (reverse _%id4786047907%_)))
                         ((lambda (_%g4784547922%_ _%g4784647924%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4794147944%_
                                                 _%g4794247947%_)
                                          (cons _%g4794147944%_
                                                _%g4794247947%_))
                                        '()
                                        _%g4784547922%_))
                                (let* ((_%keys47958%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4794947952%_
                                                         _%g4795047955%_)
                                                  (cons _%g4794947952%_
                                                        _%g4795047955%_))
                                                '()
                                                _%g4784547922%_)))
                                       (_%keytab47969%_
                                        (let ((_%ht47961%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4796347965%_)
                                             (hash-put!
                                              _%ht47961%_
                                              _%g4796347965%_
                                              '#t))
                                           _%keys47958%_)
                                          _%ht47961%_))
                                       (_%exports47972%_
                                        (gx#core-expand-export-source
                                         _%g4784647924%_))
                                       (_%fold-e47988%_
                                        (letrec ((_%fold-e47975%_
                                                  (lambda (_%out47978%_
                                                           _%r47980%_)
                                                    (if (gx#module-export?
                                                         _%out47978%_)
                                                        (if (hash-get
                                                             _%keytab47969%_
                                                             (gx#module-export-name
                                                              _%out47978%_))
                                                            _%r47980%_
                                                            (cons _%out47978%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r47980%_))
                (if (gx#export-set? _%out47978%_)
                    (foldl _%fold-e47975%_
                           _%r47980%_
                           (gx#export-set-exports _%out47978%_))
                    _%r47980%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47975%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e47988%_
                                               '()
                                               _%exports47972%_)))
                                (_%g4784347867%_ _%g4784447871%_)))
                          _%id4786147919%_
                          _%hd4785147888%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4785647900%_
                                                  _%target4785347894%_
                                                  '()))
                                               (_%g4784347867%_
                                                _%g4784447871%_)))))
                                     (_%g4784347867%_ _%g4784447871%_))))
                             (_%g4784347867%_ _%g4784447871%_))))
                     (_%g4784347867%_ _%g4784447871%_)))))
         (_%g4784247993%_ _%stx47840%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-from-out|
    (gx#make-export-expander
     (lambda (_%stx47998%_)
       (let* ((_%g4800148025%_
               (lambda (_%g4800248021%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4800248021%_)))
              (_%g4800048155%_
               (lambda (_%g4800248029%_)
                 (if (gx#stx-pair? _%g4800248029%_)
                     (let ((_%e4800548032%_ (gx#syntax-e _%g4800248029%_)))
                       (let ((_%hd4800648036%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4800548032%_)))
                             (_%tl4800748039%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4800548032%_))))
                         (if (gx#stx-pair? _%tl4800748039%_)
                             (let ((_%e4800848042%_
                                    (gx#syntax-e _%tl4800748039%_)))
                               (let ((_%hd4800948046%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4800848042%_)))
                                     (_%tl4801048049%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4800848042%_))))
                                 (if (gx#stx-pair/null? _%tl4801048049%_)
                                     (let ((_g49059_
                                            (gx#syntax-split-splice
                                             _%tl4801048049%_
                                             '0)))
                                       (begin
                                         (let ((_g49060_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49059_)
                                                      (##values-length
                                                       _g49059_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49060_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49060_)))
                                         (let ((_%target4801148052%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49059_ 0)))
                                               (_%tl4801348055%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49059_ 1))))
                                           (if (gx#stx-null? _%tl4801348055%_)
                                               (letrec ((_%loop4801448058%_
                                                         (lambda (_%hd4801248062%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%filter-out4801848065%_)
                   (if (gx#stx-pair? _%hd4801248062%_)
                       (let ((_%e4801548067%_ (gx#syntax-e _%hd4801248062%_)))
                         (let ((_%lp-hd4801648071%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4801548067%_)))
                               (_%lp-tl4801748074%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4801548067%_))))
                           (_%loop4801448058%_
                            _%lp-tl4801748074%_
                            (cons _%lp-hd4801648071%_
                                  _%filter-out4801848065%_))))
                       (let ((_%filter-out4801948077%_
                              (reverse _%filter-out4801848065%_)))
                         ((lambda (_%g4800348080%_ _%g4800448082%_)
                            (let ((_%filtered48100%_ (make-hash-table)))
                              (letrec ((_%fold-out48103%_
                                        (lambda (_%out48145%_ _%r48147%_)
                                          (if (gx#module-export? _%out48145%_)
                                              (cons _%out48145%_ _%r48147%_)
                                              (if (gx#export-set? _%out48145%_)
                                                  (foldl _%fold-out48103%_
                                                         _%r48147%_
                                                         (gx#export-set-exports
                                                          _%out48145%_))
                                                  _%r48147%_)))))
                                (for-each
                                 (lambda (_%src48106%_)
                                   (let* ((_%exports48112%_
                                           (if (gx#identifier? _%src48106%_)
                                               (let ((_%mod48109%_
                                                      (gx#syntax-local-value
                                                       _%src48106%_)))
                                                 (if (gx#module-context?
                                                      _%mod48109%_)
                                                     '#!void
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"not a module context"
                                                      _%src48106%_))
                                                 (gx#module-context-export
                                                  _%mod48109%_))
                                               (gx#core-expand-export-source
                                                _%src48106%_)))
                                          (_%exports48115%_
                                           (foldl _%fold-out48103%_
                                                  '()
                                                  _%exports48112%_)))
                                     (for-each
                                      (lambda (_%out48120%_)
                                        (hash-put!
                                         _%filtered48100%_
                                         (gx#module-export-name _%out48120%_)
                                         '#t))
                                      _%exports48115%_)))
                                 (foldr (lambda (_%g4812248125%_
                                                 _%g4812348128%_)
                                          (cons _%g4812248125%_
                                                _%g4812348128%_))
                                        '()
                                        _%g4800348080%_))
                                (let* ((_%exports48131%_
                                        (gx#core-expand-export-source
                                         _%g4800448082%_))
                                       (_%exports48134%_
                                        (foldl _%fold-out48103%_
                                               '()
                                               _%exports48131%_))
                                       (_%exports48140%_
                                        (filter (lambda (_%out48137%_)
                                                  (not (hash-get
                                                        _%filtered48100%_
                                                        (gx#module-export-name
                                                         _%out48137%_))))
                                                _%exports48134%_)))
                                  (cons 'begin: _%exports48140%_)))))
                          _%filter-out4801948077%_
                          _%hd4800948046%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4801448058%_
                                                  _%target4801148052%_
                                                  '()))
                                               (_%g4800148025%_
                                                _%g4800248029%_)))))
                                     (_%g4800148025%_ _%g4800248029%_))))
                             (_%g4800148025%_ _%g4800248029%_))))
                     (_%g4800148025%_ _%g4800248029%_)))))
         (_%g4800048155%_ _%stx47998%_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_%out48160%_ _%rename48162%_)
      (gx#make-module-export
       (gx#module-export-context _%out48160%_)
       (gx#module-export-key _%out48160%_)
       (gx#module-export-phi _%out48160%_)
       _%rename48162%_
       (gx#module-export-weak? _%out48160%_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_%stx48164%_)
       (let* ((_%g4816748200%_
               (lambda (_%g4816848196%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4816848196%_)))
              (_%g4816648391%_
               (lambda (_%g4816848204%_)
                 (if (gx#stx-pair? _%g4816848204%_)
                     (let ((_%e4817248207%_ (gx#syntax-e _%g4816848204%_)))
                       (let ((_%hd4817348211%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4817248207%_)))
                             (_%tl4817448214%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4817248207%_))))
                         (if (gx#stx-pair? _%tl4817448214%_)
                             (let ((_%e4817548217%_
                                    (gx#syntax-e _%tl4817448214%_)))
                               (let ((_%hd4817648221%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4817548217%_)))
                                     (_%tl4817748224%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4817548217%_))))
                                 (if (gx#stx-pair/null? _%tl4817748224%_)
                                     (let ((_g49061_
                                            (gx#syntax-split-splice
                                             _%tl4817748224%_
                                             '0)))
                                       (begin
                                         (let ((_g49062_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49061_)
                                                      (##values-length
                                                       _g49061_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49062_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49062_)))
                                         (let ((_%target4817848227%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49061_ 0)))
                                               (_%tl4818048230%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49061_ 1))))
                                           (if (gx#stx-null? _%tl4818048230%_)
                                               (letrec ((_%loop4818148233%_
                                                         (lambda (_%hd4817948237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4818548240%_
                          _%id4818648241%_)
                   (if (gx#stx-pair? _%hd4817948237%_)
                       (let ((_%e4818248243%_ (gx#syntax-e _%hd4817948237%_)))
                         (let ((_%lp-hd4818348247%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4818248243%_)))
                               (_%lp-tl4818448250%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4818248243%_))))
                           (if (gx#stx-pair? _%lp-hd4818348247%_)
                               (let ((_%e4818948253%_
                                      (gx#syntax-e _%lp-hd4818348247%_)))
                                 (let ((_%hd4819048257%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4818948253%_)))
                                       (_%tl4819148260%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4818948253%_))))
                                   (if (gx#stx-pair? _%tl4819148260%_)
                                       (let ((_%e4819248263%_
                                              (gx#syntax-e _%tl4819148260%_)))
                                         (let ((_%hd4819348267%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4819248263%_)))
                                               (_%tl4819448270%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4819248263%_))))
                                           (if (gx#stx-null? _%tl4819448270%_)
                                               (_%loop4818148233%_
                                                _%lp-tl4818448250%_
                                                (cons _%hd4819348267%_
                                                      _%new-id4818548240%_)
                                                (cons _%hd4819048257%_
                                                      _%id4818648241%_))
                                               (_%g4816748200%_
                                                _%g4816848204%_))))
                                       (_%g4816748200%_ _%g4816848204%_))))
                               (_%g4816748200%_ _%g4816848204%_))))
                       (let ((_%new-id4818748273%_
                              (reverse _%new-id4818548240%_))
                             (_%id4818848275%_ (reverse _%id4818648241%_)))
                         ((lambda (_%g4816948277%_
                                   _%g4817048279%_
                                   _%g4817148280%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4829848301%_
                                                      _%g4829948304%_)
                                               (cons _%g4829848301%_
                                                     _%g4829948304%_))
                                             '()
                                             _%g4817048279%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4830648309%_
                                                      _%g4830748312%_)
                                               (cons _%g4830648309%_
                                                     _%g4830748312%_))
                                             '()
                                             _%g4816948277%_)))
                                (let* ((_%keytab48315%_ (make-hash-table))
                                       (_%found48318%_ (make-hash-table))
                                       (_%_48341%_
                                        (for-each
                                         (lambda (_%id48321%_ _%new-id48323%_)
                                           (hash-put!
                                            _%keytab48315%_
                                            (gx#core-identifier-key
                                             _%id48321%_)
                                            (gx#core-identifier-key
                                             _%new-id48323%_)))
                                         (foldr (lambda (_%g4832448327%_
                                                         _%g4832548330%_)
                                                  (cons _%g4832448327%_
                                                        _%g4832548330%_))
                                                '()
                                                _%g4817048279%_)
                                         (foldr (lambda (_%g4833248335%_
                                                         _%g4833348338%_)
                                                  (cons _%g4833248335%_
                                                        _%g4833348338%_))
                                                '()
                                                _%g4816948277%_)))
                                       (_%exports48344%_
                                        (gx#core-expand-export-source
                                         _%g4817148280%_))
                                       (_%fold-e48372%_
                                        (letrec ((_%fold-e48347%_
                                                  (lambda (_%out48350%_
                                                           _%r48352%_)
                                                    (if (gx#module-export?
                                                         _%out48350%_)
                                                        (let* ((_%name48356%_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out48350%_))
                       (_%$e48359%_ (hash-get _%keytab48315%_ _%name48356%_)))
                  (if _%$e48359%_
                      ((lambda (_%rename48363%_)
                         (hash-put! _%found48318%_ _%name48356%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                _%out48350%_
                                _%rename48363%_)
                               _%r48352%_))
                       _%$e48359%_)
                      (cons _%out48350%_ _%r48352%_)))
                (if (gx#export-set? _%out48350%_)
                    (foldl _%fold-e48347%_
                           _%r48352%_
                           (gx#export-set-exports _%out48350%_))
                    (cons _%out48350%_ _%r48352%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e48347%_))
                                       (_%new-exports48375%_
                                        (foldl _%fold-e48372%_
                                               '()
                                               _%exports48344%_)))
                                  (for-each
                                   (lambda (_%id48380%_)
                                     (if (hash-get
                                          _%found48318%_
                                          (gx#core-identifier-key _%id48380%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _%stx48164%_
                                          _%id48380%_)))
                                   (foldr (lambda (_%g4838248385%_
                                                   _%g4838348388%_)
                                            (cons _%g4838248385%_
                                                  _%g4838348388%_))
                                          '()
                                          _%g4817048279%_))
                                  (cons 'begin: _%new-exports48375%_))
                                (_%g4816748200%_ _%g4816848204%_)))
                          _%new-id4818748273%_
                          _%id4818848275%_
                          _%hd4817648221%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4818148233%_
                                                  _%target4817848227%_
                                                  '()
                                                  '()))
                                               (_%g4816748200%_
                                                _%g4816848204%_)))))
                                     (_%g4816748200%_ _%g4816848204%_))))
                             (_%g4816748200%_ _%g4816848204%_))))
                     (_%g4816748200%_ _%g4816848204%_)))))
         (_%g4816648391%_ _%stx48164%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_%stx48396%_)
       (let* ((_%g4839948417%_
               (lambda (_%g4840048413%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4840048413%_)))
              (_%g4839848502%_
               (lambda (_%g4840048421%_)
                 (if (gx#stx-pair? _%g4840048421%_)
                     (let ((_%e4840348424%_ (gx#syntax-e _%g4840048421%_)))
                       (let ((_%hd4840448428%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4840348424%_)))
                             (_%tl4840548431%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4840348424%_))))
                         (if (gx#stx-pair? _%tl4840548431%_)
                             (let ((_%e4840648434%_
                                    (gx#syntax-e _%tl4840548431%_)))
                               (let ((_%hd4840748438%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4840648434%_)))
                                     (_%tl4840848441%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4840648434%_))))
                                 (if (gx#stx-pair? _%tl4840848441%_)
                                     (let ((_%e4840948444%_
                                            (gx#syntax-e _%tl4840848441%_)))
                                       (let ((_%hd4841048448%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4840948444%_)))
                                             (_%tl4841148451%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4840948444%_))))
                                         (if (gx#stx-null? _%tl4841148451%_)
                                             ((lambda (_%g4840148454%_
                                                       _%g4840248456%_)
                                                (if (gx#identifier?
                                                     _%g4840148454%_)
                                                    (let* ((_%pre48472%_
                                                            (gx#stx-e
                                                             _%g4840148454%_))
                                                           (_%exports48475%_
                                                            (gx#core-expand-export-source
                                                             _%g4840248456%_))
                                                           (_%rename-e48481%_
                                                            (lambda (_%name48478%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name48478%_
                                                               _%pre48472%_)))
                                                           (_%fold-e48497%_
                                                            (letrec ((_%fold-e48484%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%out48487%_ _%r48489%_)
                                (if (gx#module-export? _%out48487%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                           _%out48487%_
                                           (_%rename-e48481%_
                                            (gx#module-export-name
                                             _%out48487%_)))
                                          _%r48489%_)
                                    (if (gx#export-set? _%out48487%_)
                                        (foldl _%fold-e48484%_
                                               _%r48489%_
                                               (gx#export-set-exports
                                                _%out48487%_))
                                        (cons _%out48487%_ _%r48489%_))))))
                      _%fold-e48484%_)))
              (cons 'begin: (foldl _%fold-e48497%_ '() _%exports48475%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4839948417%_
                                                     _%g4840048421%_)))
                                              _%hd4841048448%_
                                              _%hd4840748438%_)
                                             (_%g4839948417%_
                                              _%g4840048421%_))))
                                     (_%g4839948417%_ _%g4840048421%_))))
                             (_%g4839948417%_ _%g4840048421%_))))
                     (_%g4839948417%_ _%g4840048421%_)))))
         (_%g4839848502%_ _%stx48396%_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_%stx48506%_)
       (letrec ((_%identifiers48509%_
                 (lambda (_%id48737%_ _%unchecked?48739%_)
                   (let ((_%info48741%_
                          (gx#syntax-local-value _%id48737%_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%info48741%_))
                         (cons _%id48737%_
                               (cons (let ((__obj49038 _%info48741%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj49038
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj49038
                                              '3
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj49038
                                            'type-descriptor)))
                                     (foldr cons
                                            (cons (let ((__obj49039
                                                         _%info48741%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj49039
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj49039
                                                           '14
                                                           '#f
                                                           '#f))
                                                        (unchecked-slot-ref
                                                         __obj49039
                                                         'predicate)))
                                                  (foldr cons
                                                         (foldr cons
                                                                (if _%unchecked?48739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons
                                   (map cdr
                                        (let ((__obj49040 _%info48741%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj49040
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj49040
                                                 '18
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj49040
                                               'unchecked-mutators))))
                                   (map cdr
                                        (let ((__obj49041 _%info48741%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj49041
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj49041
                                                 '17
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj49041
                                               'unchecked-accessors)))))
                            '())
                        (map cdr
                             (let ((__obj49042 _%info48741%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj49042
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj49042
                                      '16
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj49042
                                    'mutators)))))
                 (map cdr
                      (let ((__obj49043 _%info48741%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj49043
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj49043
                               '15
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj49043 'accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_%ctor48744%_
                                                   (let ((__obj49044
                                                          _%info48741%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj49044
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj49044
                                                            '13
                                                            '#f
                                                            '#f))
                                                         (unchecked-slot-ref
                                                          __obj49044
                                                          'constructor)))))
                                              (if _%ctor48744%_
                                                  (cons _%ctor48744%_ '())
                                                  '())))))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _%stx48506%_
                          _%id48737%_))))))
         (let* ((_%__stx4897948980%_ _%stx48506%_)
                (_%g4851348554%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%__stx4897948980%_))))
           (let ((_%__kont4898248983%_
                  (lambda (_%g4851548698%_ _%g4851648700%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4871948721%_)
                              (_%identifiers48509%_
                               _%g4871948721%_
                               (gx#stx-e _%g4851648700%_)))
                            (foldr (lambda (_%g4872448727%_ _%g4872548730%_)
                                     (cons _%g4872448727%_ _%g4872548730%_))
                                   '()
                                   _%g4851548698%_))))))
                 (_%__kont4898648987%_
                  (lambda (_%g4853648599%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4861548617%_)
                              (_%identifiers48509%_ _%g4861548617%_ '#f))
                            (foldr (lambda (_%g4862048623%_ _%g4862148626%_)
                                     (cons _%g4862048623%_ _%g4862148626%_))
                                   '()
                                   _%g4853648599%_)))))))
             (let* ((_%__match4903649037%_
                     (lambda (_%e4853748561%_
                              _%hd4853848565%_
                              _%tl4853948568%_
                              _%__splice4898848989%_
                              _%target4854048571%_
                              _%tl4854248574%_)
                       (letrec ((_%loop4854348577%_
                                 (lambda (_%hd4854148581%_ _%id4854748584%_)
                                   (if (gx#stx-pair? _%hd4854148581%_)
                                       (let ((_%e4854448586%_
                                              (gx#syntax-e _%hd4854148581%_)))
                                         (let ((_%lp-tl4854648593%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4854448586%_)))
                                               (_%lp-hd4854548590%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4854448586%_))))
                                           (_%loop4854348577%_
                                            _%lp-tl4854648593%_
                                            (cons _%lp-hd4854548590%_
                                                  _%id4854748584%_))))
                                       (let ((_%id4854848596%_
                                              (reverse _%id4854748584%_)))
                                         (_%__kont4898648987%_
                                          _%id4854848596%_))))))
                         (_%loop4854348577%_ _%target4854048571%_ '()))))
                    (_%__match4902249023%_
                     (lambda (_%e4851748636%_
                              _%hd4851848640%_
                              _%tl4851948643%_
                              _%e4852048646%_
                              _%hd4852148650%_
                              _%tl4852248653%_
                              _%e4852348656%_
                              _%e4852448660%_
                              _%hd4852548664%_
                              _%tl4852648667%_
                              _%__splice4898448985%_
                              _%target4852748670%_
                              _%tl4852948673%_)
                       (letrec ((_%loop4853048676%_
                                 (lambda (_%hd4852848680%_ _%id4853448683%_)
                                   (if (gx#stx-pair? _%hd4852848680%_)
                                       (let ((_%e4853148685%_
                                              (gx#syntax-e _%hd4852848680%_)))
                                         (let ((_%lp-tl4853348692%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4853148685%_)))
                                               (_%lp-hd4853248689%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4853148685%_))))
                                           (_%loop4853048676%_
                                            _%lp-tl4853348692%_
                                            (cons _%lp-hd4853248689%_
                                                  _%id4853448683%_))))
                                       (let ((_%id4853548695%_
                                              (reverse _%id4853448683%_)))
                                         (_%__kont4898248983%_
                                          _%id4853548695%_
                                          _%hd4852548664%_))))))
                         (_%loop4853048676%_ _%target4852748670%_ '())))))
               (if (gx#stx-pair? _%__stx4897948980%_)
                   (let ((_%e4851748636%_ (gx#syntax-e _%__stx4897948980%_)))
                     (let ((_%tl4851948643%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4851748636%_)))
                           (_%hd4851848640%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4851748636%_))))
                       (if (gx#stx-pair? _%tl4851948643%_)
                           (let ((_%e4852048646%_
                                  (gx#syntax-e _%tl4851948643%_)))
                             (let ((_%tl4852248653%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4852048646%_)))
                                   (_%hd4852148650%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4852048646%_))))
                               (if (gx#stx-datum? _%hd4852148650%_)
                                   (let ((_%e4852348656%_
                                          (gx#stx-e _%hd4852148650%_)))
                                     (if (equal? _%e4852348656%_ 'unchecked:)
                                         (if (gx#stx-pair? _%tl4852248653%_)
                                             (let ((_%e4852448660%_
                                                    (gx#syntax-e
                                                     _%tl4852248653%_)))
                                               (let ((_%tl4852648667%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4852448660%_)))
                                                     (_%hd4852548664%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4852448660%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%tl4852648667%_)
                                                     (let ((_%__splice4898448985%_
                                                            (gx#syntax-split-splice->vector
                                                             _%tl4852648667%_
                                                             '0)))
                                                       (let ((_%tl4852948673%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4898448985%_ '1)))
                     (_%target4852748670%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4898448985%_ '0))))
                 (if (gx#stx-null? _%tl4852948673%_)
                     (_%__match4902249023%_
                      _%e4851748636%_
                      _%hd4851848640%_
                      _%tl4851948643%_
                      _%e4852048646%_
                      _%hd4852148650%_
                      _%tl4852248653%_
                      _%e4852348656%_
                      _%e4852448660%_
                      _%hd4852548664%_
                      _%tl4852648667%_
                      _%__splice4898448985%_
                      _%target4852748670%_
                      _%tl4852948673%_)
                     (if (gx#stx-pair/null? _%tl4851948643%_)
                         (let ((_%__splice4898848989%_
                                (gx#syntax-split-splice->vector
                                 _%tl4851948643%_
                                 '0)))
                           (let ((_%tl4854248574%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4898848989%_ '1)))
                                 (_%target4854048571%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4898848989%_ '0))))
                             (if (gx#stx-null? _%tl4854248574%_)
                                 (_%__match4903649037%_
                                  _%e4851748636%_
                                  _%hd4851848640%_
                                  _%tl4851948643%_
                                  _%__splice4898848989%_
                                  _%target4854048571%_
                                  _%tl4854248574%_)
                                 (let ()
                                   (declare (not safe))
                                   (_%g4851348554%_)))))
                         (let () (declare (not safe)) (_%g4851348554%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _%tl4851948643%_)
                                                         (let ((_%__splice4898848989%_
                                                                (gx#syntax-split-splice->vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl4851948643%_
                         '0)))
                   (let ((_%tl4854248574%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4898848989%_ '1)))
                         (_%target4854048571%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4898848989%_ '0))))
                     (if (gx#stx-null? _%tl4854248574%_)
                         (_%__match4903649037%_
                          _%e4851748636%_
                          _%hd4851848640%_
                          _%tl4851948643%_
                          _%__splice4898848989%_
                          _%target4854048571%_
                          _%tl4854248574%_)
                         (let () (declare (not safe)) (_%g4851348554%_)))))
                 (let () (declare (not safe)) (_%g4851348554%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _%tl4851948643%_)
                                                 (let ((_%__splice4898848989%_
                                                        (gx#syntax-split-splice->vector
                                                         _%tl4851948643%_
                                                         '0)))
                                                   (let ((_%tl4854248574%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4898848989%_
                                                             '1)))
                                                         (_%target4854048571%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4898848989%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4854248574%_)
                                                         (_%__match4903649037%_
                                                          _%e4851748636%_
                                                          _%hd4851848640%_
                                                          _%tl4851948643%_
                                                          _%__splice4898848989%_
                                                          _%target4854048571%_
                                                          _%tl4854248574%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4851348554%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4851348554%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4851948643%_)
                                             (let ((_%__splice4898848989%_
                                                    (gx#syntax-split-splice->vector
                                                     _%tl4851948643%_
                                                     '0)))
                                               (let ((_%tl4854248574%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4898848989%_
                                                         '1)))
                                                     (_%target4854048571%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4898848989%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4854248574%_)
                                                     (_%__match4903649037%_
                                                      _%e4851748636%_
                                                      _%hd4851848640%_
                                                      _%tl4851948643%_
                                                      _%__splice4898848989%_
                                                      _%target4854048571%_
                                                      _%tl4854248574%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4851348554%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4851348554%_)))))
                                   (if (gx#stx-pair/null? _%tl4851948643%_)
                                       (let ((_%__splice4898848989%_
                                              (gx#syntax-split-splice->vector
                                               _%tl4851948643%_
                                               '0)))
                                         (let ((_%tl4854248574%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4898848989%_
                                                   '1)))
                                               (_%target4854048571%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4898848989%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4854248574%_)
                                               (_%__match4903649037%_
                                                _%e4851748636%_
                                                _%hd4851848640%_
                                                _%tl4851948643%_
                                                _%__splice4898848989%_
                                                _%target4854048571%_
                                                _%tl4854248574%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4851348554%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4851348554%_))))))
                           (if (gx#stx-pair/null? _%tl4851948643%_)
                               (let ((_%__splice4898848989%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4851948643%_
                                       '0)))
                                 (let ((_%tl4854248574%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4898848989%_
                                           '1)))
                                       (_%target4854048571%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4898848989%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4854248574%_)
                                       (_%__match4903649037%_
                                        _%e4851748636%_
                                        _%hd4851848640%_
                                        _%tl4851948643%_
                                        _%__splice4898848989%_
                                        _%target4854048571%_
                                        _%tl4854248574%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4851348554%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4851348554%_))))))
                   (let () (declare (not safe)) (_%g4851348554%_)))))))))))
