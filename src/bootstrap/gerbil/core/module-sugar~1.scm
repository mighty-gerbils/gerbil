(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_%$stx45959%_)
      (let* ((_%__stx4874348744%_ _%$stx45959%_)
             (_%g4596445983%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4874348744%_))))
        (let ((_%__kont4874648747%_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (_%__kont4874848749%_
               (lambda (_%g4596946010%_ _%g4597046012%_ _%g4597146013%_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _%g4597046012%_
                                   (cons (cons _%g4597146013%_ _%g4596946010%_)
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _%g4597046012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? _%__stx4874348744%_)
              (let ((_%e4596646035%_ (gx#syntax-e _%__stx4874348744%_)))
                (let ((_%tl4596846042%_
                       (let () (declare (not safe)) (##cdr _%e4596646035%_)))
                      (_%hd4596746039%_
                       (let () (declare (not safe)) (##car _%e4596646035%_))))
                  (if (gx#stx-null? _%tl4596846042%_)
                      (_%__kont4874648747%_)
                      (if (gx#stx-pair? _%tl4596846042%_)
                          (let ((_%e4597546000%_
                                 (gx#syntax-e _%tl4596846042%_)))
                            (let ((_%tl4597746007%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4597546000%_)))
                                  (_%hd4597646004%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4597546000%_))))
                              (_%__kont4874848749%_
                               _%tl4597746007%_
                               _%hd4597646004%_
                               _%hd4596746039%_)))
                          (let () (declare (not safe)) (_%g4596445983%_))))))
              (let () (declare (not safe)) (_%g4596445983%_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_%$stx46053%_)
      (let* ((_%__stx4877348774%_ _%$stx46053%_)
             (_%g4605846098%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4877348774%_))))
        (let ((_%__kont4877648777%_
               (lambda (_%g4606046234%_ _%g4606146236%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g4606146236%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _%g4606046234%_ '()))
                                   '())))))
              (_%__kont4877848779%_
               (lambda (_%g4607146163%_
                        _%g4607246165%_
                        _%g4607346166%_
                        _%g4607446167%_)
                 (cons _%g4607446167%_
                       (cons _%g4607346166%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g4607246165%_
                                               (foldr (lambda (_%g4618846191%_
                                                               _%g4618946194%_)
                                                        (cons _%g4618846191%_
                                                              _%g4618946194%_))
                                                      '()
                                                      _%g4607146163%_)))
                                   '()))))))
          (let* ((_%__match4882848829%_
                  (lambda (_%e4607546105%_
                           _%hd4607646109%_
                           _%tl4607746112%_
                           _%e4607846115%_
                           _%hd4607946119%_
                           _%tl4608046122%_
                           _%e4608146125%_
                           _%hd4608246129%_
                           _%tl4608346132%_
                           _%__splice4878048781%_
                           _%target4608446135%_
                           _%tl4608646138%_)
                    (letrec ((_%loop4608746141%_
                              (lambda (_%hd4608546145%_ _%body4609146148%_)
                                (if (gx#stx-pair? _%hd4608546145%_)
                                    (let ((_%e4608846150%_
                                           (gx#syntax-e _%hd4608546145%_)))
                                      (let ((_%lp-tl4609046157%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4608846150%_)))
                                            (_%lp-hd4608946154%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4608846150%_))))
                                        (_%loop4608746141%_
                                         _%lp-tl4609046157%_
                                         (cons _%lp-hd4608946154%_
                                               _%body4609146148%_))))
                                    (let ((_%body4609246160%_
                                           (reverse _%body4609146148%_)))
                                      (let ((_%g4607146163%_
                                             _%body4609246160%_)
                                            (_%g4607246165%_ _%tl4608346132%_)
                                            (_%g4607346166%_ _%hd4608246129%_)
                                            (_%g4607446167%_ _%hd4607646109%_))
                                        (if (gx#identifier? _%g4607346166%_)
                                            (_%__kont4877848779%_
                                             _%g4607146163%_
                                             _%g4607246165%_
                                             _%g4607346166%_
                                             _%g4607446167%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4605846098%_)))))))))
                      (_%loop4608746141%_ _%target4608446135%_ '()))))
                 (_%__match4880248803%_
                  (lambda (_%e4606246204%_
                           _%hd4606346208%_
                           _%tl4606446211%_
                           _%e4606546214%_
                           _%hd4606646218%_
                           _%tl4606746221%_
                           _%e4606846224%_
                           _%hd4606946228%_
                           _%tl4607046231%_)
                    (let ((_%g4606046234%_ _%hd4606946228%_)
                          (_%g4606146236%_ _%hd4606646218%_))
                      (if (gx#identifier? _%g4606146236%_)
                          (_%__kont4877648777%_
                           _%g4606046234%_
                           _%g4606146236%_)
                          (if (gx#stx-pair? _%hd4606646218%_)
                              (let ((_%e4608146125%_
                                     (gx#syntax-e _%hd4606646218%_)))
                                (let ((_%tl4608346132%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4608146125%_)))
                                      (_%hd4608246129%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4608146125%_))))
                                  (if (gx#stx-pair/null? _%tl4606746221%_)
                                      (let ((_%__splice4878048781%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4606746221%_
                                              '0)))
                                        (let ((_%tl4608646138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4878048781%_
                                                  '1)))
                                              (_%target4608446135%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4878048781%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4608646138%_)
                                              (_%__match4882848829%_
                                               _%e4606246204%_
                                               _%hd4606346208%_
                                               _%tl4606446211%_
                                               _%e4606546214%_
                                               _%hd4606646218%_
                                               _%tl4606746221%_
                                               _%e4608146125%_
                                               _%hd4608246129%_
                                               _%tl4608346132%_
                                               _%__splice4878048781%_
                                               _%target4608446135%_
                                               _%tl4608646138%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4605846098%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4605846098%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4605846098%_))))))))
            (if (gx#stx-pair? _%__stx4877348774%_)
                (let ((_%e4606246204%_ (gx#syntax-e _%__stx4877348774%_)))
                  (let ((_%tl4606446211%_
                         (let () (declare (not safe)) (##cdr _%e4606246204%_)))
                        (_%hd4606346208%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4606246204%_))))
                    (if (gx#stx-pair? _%tl4606446211%_)
                        (let ((_%e4606546214%_ (gx#syntax-e _%tl4606446211%_)))
                          (let ((_%tl4606746221%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4606546214%_)))
                                (_%hd4606646218%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4606546214%_))))
                            (if (gx#stx-pair? _%tl4606746221%_)
                                (let ((_%e4606846224%_
                                       (gx#syntax-e _%tl4606746221%_)))
                                  (let ((_%tl4607046231%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4606846224%_)))
                                        (_%hd4606946228%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4606846224%_))))
                                    (if (gx#stx-null? _%tl4607046231%_)
                                        (_%__match4880248803%_
                                         _%e4606246204%_
                                         _%hd4606346208%_
                                         _%tl4606446211%_
                                         _%e4606546214%_
                                         _%hd4606646218%_
                                         _%tl4606746221%_
                                         _%e4606846224%_
                                         _%hd4606946228%_
                                         _%tl4607046231%_)
                                        (if (gx#stx-pair? _%hd4606646218%_)
                                            (let ((_%e4608146125%_
                                                   (gx#syntax-e
                                                    _%hd4606646218%_)))
                                              (let ((_%tl4608346132%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4608146125%_)))
                                                    (_%hd4608246129%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4608146125%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4606746221%_)
                                                    (let ((_%__splice4878048781%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4606746221%_
                                                            '0)))
                                                      (let ((_%tl4608646138%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4878048781%_ '1)))
                    (_%target4608446135%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4878048781%_ '0))))
                (if (gx#stx-null? _%tl4608646138%_)
                    (_%__match4882848829%_
                     _%e4606246204%_
                     _%hd4606346208%_
                     _%tl4606446211%_
                     _%e4606546214%_
                     _%hd4606646218%_
                     _%tl4606746221%_
                     _%e4608146125%_
                     _%hd4608246129%_
                     _%tl4608346132%_
                     _%__splice4878048781%_
                     _%target4608446135%_
                     _%tl4608646138%_)
                    (let () (declare (not safe)) (_%g4605846098%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4605846098%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4605846098%_))))))
                                (if (gx#stx-pair? _%hd4606646218%_)
                                    (let ((_%e4608146125%_
                                           (gx#syntax-e _%hd4606646218%_)))
                                      (let ((_%tl4608346132%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4608146125%_)))
                                            (_%hd4608246129%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4608146125%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4606746221%_)
                                            (let ((_%__splice4878048781%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4606746221%_
                                                    '0)))
                                              (let ((_%tl4608646138%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4878048781%_
                                                        '1)))
                                                    (_%target4608446135%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4878048781%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4608646138%_)
                                                    (_%__match4882848829%_
                                                     _%e4606246204%_
                                                     _%hd4606346208%_
                                                     _%tl4606446211%_
                                                     _%e4606546214%_
                                                     _%hd4606646218%_
                                                     _%tl4606746221%_
                                                     _%e4608146125%_
                                                     _%hd4608246129%_
                                                     _%tl4608346132%_
                                                     _%__splice4878048781%_
                                                     _%target4608446135%_
                                                     _%tl4608646138%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4605846098%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4605846098%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4605846098%_))))))
                        (let () (declare (not safe)) (_%g4605846098%_)))))
                (let () (declare (not safe)) (_%g4605846098%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_%$stx46256%_)
      (let* ((_%__stx4883148832%_ _%$stx46256%_)
             (_%g4626146301%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4883148832%_))))
        (let ((_%__kont4883448835%_
               (lambda (_%g4626346437%_ _%g4626446439%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g4626446439%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _%g4626346437%_ '()))
                                   '())))))
              (_%__kont4883648837%_
               (lambda (_%g4627446366%_
                        _%g4627546368%_
                        _%g4627646369%_
                        _%g4627746370%_)
                 (cons _%g4627746370%_
                       (cons _%g4627646369%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g4627546368%_
                                               (foldr (lambda (_%g4639146394%_
                                                               _%g4639246397%_)
                                                        (cons _%g4639146394%_
                                                              _%g4639246397%_))
                                                      '()
                                                      _%g4627446366%_)))
                                   '()))))))
          (let* ((_%__match4888648887%_
                  (lambda (_%e4627846308%_
                           _%hd4627946312%_
                           _%tl4628046315%_
                           _%e4628146318%_
                           _%hd4628246322%_
                           _%tl4628346325%_
                           _%e4628446328%_
                           _%hd4628546332%_
                           _%tl4628646335%_
                           _%__splice4883848839%_
                           _%target4628746338%_
                           _%tl4628946341%_)
                    (letrec ((_%loop4629046344%_
                              (lambda (_%hd4628846348%_ _%body4629446351%_)
                                (if (gx#stx-pair? _%hd4628846348%_)
                                    (let ((_%e4629146353%_
                                           (gx#syntax-e _%hd4628846348%_)))
                                      (let ((_%lp-tl4629346360%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4629146353%_)))
                                            (_%lp-hd4629246357%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4629146353%_))))
                                        (_%loop4629046344%_
                                         _%lp-tl4629346360%_
                                         (cons _%lp-hd4629246357%_
                                               _%body4629446351%_))))
                                    (let ((_%body4629546363%_
                                           (reverse _%body4629446351%_)))
                                      (let ((_%g4627446366%_
                                             _%body4629546363%_)
                                            (_%g4627546368%_ _%tl4628646335%_)
                                            (_%g4627646369%_ _%hd4628546332%_)
                                            (_%g4627746370%_ _%hd4627946312%_))
                                        (if (gx#identifier? _%g4627646369%_)
                                            (_%__kont4883648837%_
                                             _%g4627446366%_
                                             _%g4627546368%_
                                             _%g4627646369%_
                                             _%g4627746370%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4626146301%_)))))))))
                      (_%loop4629046344%_ _%target4628746338%_ '()))))
                 (_%__match4886048861%_
                  (lambda (_%e4626546407%_
                           _%hd4626646411%_
                           _%tl4626746414%_
                           _%e4626846417%_
                           _%hd4626946421%_
                           _%tl4627046424%_
                           _%e4627146427%_
                           _%hd4627246431%_
                           _%tl4627346434%_)
                    (let ((_%g4626346437%_ _%hd4627246431%_)
                          (_%g4626446439%_ _%hd4626946421%_))
                      (if (gx#identifier? _%g4626446439%_)
                          (_%__kont4883448835%_
                           _%g4626346437%_
                           _%g4626446439%_)
                          (if (gx#stx-pair? _%hd4626946421%_)
                              (let ((_%e4628446328%_
                                     (gx#syntax-e _%hd4626946421%_)))
                                (let ((_%tl4628646335%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4628446328%_)))
                                      (_%hd4628546332%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4628446328%_))))
                                  (if (gx#stx-pair/null? _%tl4627046424%_)
                                      (let ((_%__splice4883848839%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4627046424%_
                                              '0)))
                                        (let ((_%tl4628946341%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4883848839%_
                                                  '1)))
                                              (_%target4628746338%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4883848839%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4628946341%_)
                                              (_%__match4888648887%_
                                               _%e4626546407%_
                                               _%hd4626646411%_
                                               _%tl4626746414%_
                                               _%e4626846417%_
                                               _%hd4626946421%_
                                               _%tl4627046424%_
                                               _%e4628446328%_
                                               _%hd4628546332%_
                                               _%tl4628646335%_
                                               _%__splice4883848839%_
                                               _%target4628746338%_
                                               _%tl4628946341%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4626146301%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4626146301%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4626146301%_))))))))
            (if (gx#stx-pair? _%__stx4883148832%_)
                (let ((_%e4626546407%_ (gx#syntax-e _%__stx4883148832%_)))
                  (let ((_%tl4626746414%_
                         (let () (declare (not safe)) (##cdr _%e4626546407%_)))
                        (_%hd4626646411%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4626546407%_))))
                    (if (gx#stx-pair? _%tl4626746414%_)
                        (let ((_%e4626846417%_ (gx#syntax-e _%tl4626746414%_)))
                          (let ((_%tl4627046424%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4626846417%_)))
                                (_%hd4626946421%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4626846417%_))))
                            (if (gx#stx-pair? _%tl4627046424%_)
                                (let ((_%e4627146427%_
                                       (gx#syntax-e _%tl4627046424%_)))
                                  (let ((_%tl4627346434%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4627146427%_)))
                                        (_%hd4627246431%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4627146427%_))))
                                    (if (gx#stx-null? _%tl4627346434%_)
                                        (_%__match4886048861%_
                                         _%e4626546407%_
                                         _%hd4626646411%_
                                         _%tl4626746414%_
                                         _%e4626846417%_
                                         _%hd4626946421%_
                                         _%tl4627046424%_
                                         _%e4627146427%_
                                         _%hd4627246431%_
                                         _%tl4627346434%_)
                                        (if (gx#stx-pair? _%hd4626946421%_)
                                            (let ((_%e4628446328%_
                                                   (gx#syntax-e
                                                    _%hd4626946421%_)))
                                              (let ((_%tl4628646335%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4628446328%_)))
                                                    (_%hd4628546332%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4628446328%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4627046424%_)
                                                    (let ((_%__splice4883848839%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4627046424%_
                                                            '0)))
                                                      (let ((_%tl4628946341%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4883848839%_ '1)))
                    (_%target4628746338%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4883848839%_ '0))))
                (if (gx#stx-null? _%tl4628946341%_)
                    (_%__match4888648887%_
                     _%e4626546407%_
                     _%hd4626646411%_
                     _%tl4626746414%_
                     _%e4626846417%_
                     _%hd4626946421%_
                     _%tl4627046424%_
                     _%e4628446328%_
                     _%hd4628546332%_
                     _%tl4628646335%_
                     _%__splice4883848839%_
                     _%target4628746338%_
                     _%tl4628946341%_)
                    (let () (declare (not safe)) (_%g4626146301%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4626146301%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4626146301%_))))))
                                (if (gx#stx-pair? _%hd4626946421%_)
                                    (let ((_%e4628446328%_
                                           (gx#syntax-e _%hd4626946421%_)))
                                      (let ((_%tl4628646335%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4628446328%_)))
                                            (_%hd4628546332%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4628446328%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4627046424%_)
                                            (let ((_%__splice4883848839%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4627046424%_
                                                    '0)))
                                              (let ((_%tl4628946341%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4883848839%_
                                                        '1)))
                                                    (_%target4628746338%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4883848839%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4628946341%_)
                                                    (_%__match4888648887%_
                                                     _%e4626546407%_
                                                     _%hd4626646411%_
                                                     _%tl4626746414%_
                                                     _%e4626846417%_
                                                     _%hd4626946421%_
                                                     _%tl4627046424%_
                                                     _%e4628446328%_
                                                     _%hd4628546332%_
                                                     _%tl4628646335%_
                                                     _%__splice4883848839%_
                                                     _%target4628746338%_
                                                     _%tl4628946341%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4626146301%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4626146301%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4626146301%_))))))
                        (let () (declare (not safe)) (_%g4626146301%_)))))
                (let () (declare (not safe)) (_%g4626146301%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_%$stx46459%_)
      (let* ((_%__stx4888948890%_ _%$stx46459%_)
             (_%g4646446504%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4888948890%_))))
        (let ((_%__kont4889248893%_
               (lambda (_%g4646646640%_ _%g4646746642%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g4646746642%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _%g4646646640%_ '()))
                                   '())))))
              (_%__kont4889448895%_
               (lambda (_%g4647746569%_
                        _%g4647846571%_
                        _%g4647946572%_
                        _%g4648046573%_)
                 (cons _%g4648046573%_
                       (cons _%g4647946572%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g4647846571%_
                                               (foldr (lambda (_%g4659446597%_
                                                               _%g4659546600%_)
                                                        (cons _%g4659446597%_
                                                              _%g4659546600%_))
                                                      '()
                                                      _%g4647746569%_)))
                                   '()))))))
          (let* ((_%__match4894448945%_
                  (lambda (_%e4648146511%_
                           _%hd4648246515%_
                           _%tl4648346518%_
                           _%e4648446521%_
                           _%hd4648546525%_
                           _%tl4648646528%_
                           _%e4648746531%_
                           _%hd4648846535%_
                           _%tl4648946538%_
                           _%__splice4889648897%_
                           _%target4649046541%_
                           _%tl4649246544%_)
                    (letrec ((_%loop4649346547%_
                              (lambda (_%hd4649146551%_ _%body4649746554%_)
                                (if (gx#stx-pair? _%hd4649146551%_)
                                    (let ((_%e4649446556%_
                                           (gx#syntax-e _%hd4649146551%_)))
                                      (let ((_%lp-tl4649646563%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4649446556%_)))
                                            (_%lp-hd4649546560%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4649446556%_))))
                                        (_%loop4649346547%_
                                         _%lp-tl4649646563%_
                                         (cons _%lp-hd4649546560%_
                                               _%body4649746554%_))))
                                    (let ((_%body4649846566%_
                                           (reverse _%body4649746554%_)))
                                      (let ((_%g4647746569%_
                                             _%body4649846566%_)
                                            (_%g4647846571%_ _%tl4648946538%_)
                                            (_%g4647946572%_ _%hd4648846535%_)
                                            (_%g4648046573%_ _%hd4648246515%_))
                                        (if (gx#identifier? _%g4647946572%_)
                                            (_%__kont4889448895%_
                                             _%g4647746569%_
                                             _%g4647846571%_
                                             _%g4647946572%_
                                             _%g4648046573%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4646446504%_)))))))))
                      (_%loop4649346547%_ _%target4649046541%_ '()))))
                 (_%__match4891848919%_
                  (lambda (_%e4646846610%_
                           _%hd4646946614%_
                           _%tl4647046617%_
                           _%e4647146620%_
                           _%hd4647246624%_
                           _%tl4647346627%_
                           _%e4647446630%_
                           _%hd4647546634%_
                           _%tl4647646637%_)
                    (let ((_%g4646646640%_ _%hd4647546634%_)
                          (_%g4646746642%_ _%hd4647246624%_))
                      (if (gx#identifier? _%g4646746642%_)
                          (_%__kont4889248893%_
                           _%g4646646640%_
                           _%g4646746642%_)
                          (if (gx#stx-pair? _%hd4647246624%_)
                              (let ((_%e4648746531%_
                                     (gx#syntax-e _%hd4647246624%_)))
                                (let ((_%tl4648946538%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4648746531%_)))
                                      (_%hd4648846535%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4648746531%_))))
                                  (if (gx#stx-pair/null? _%tl4647346627%_)
                                      (let ((_%__splice4889648897%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4647346627%_
                                              '0)))
                                        (let ((_%tl4649246544%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4889648897%_
                                                  '1)))
                                              (_%target4649046541%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4889648897%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4649246544%_)
                                              (_%__match4894448945%_
                                               _%e4646846610%_
                                               _%hd4646946614%_
                                               _%tl4647046617%_
                                               _%e4647146620%_
                                               _%hd4647246624%_
                                               _%tl4647346627%_
                                               _%e4648746531%_
                                               _%hd4648846535%_
                                               _%tl4648946538%_
                                               _%__splice4889648897%_
                                               _%target4649046541%_
                                               _%tl4649246544%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4646446504%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4646446504%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4646446504%_))))))))
            (if (gx#stx-pair? _%__stx4888948890%_)
                (let ((_%e4646846610%_ (gx#syntax-e _%__stx4888948890%_)))
                  (let ((_%tl4647046617%_
                         (let () (declare (not safe)) (##cdr _%e4646846610%_)))
                        (_%hd4646946614%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4646846610%_))))
                    (if (gx#stx-pair? _%tl4647046617%_)
                        (let ((_%e4647146620%_ (gx#syntax-e _%tl4647046617%_)))
                          (let ((_%tl4647346627%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4647146620%_)))
                                (_%hd4647246624%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4647146620%_))))
                            (if (gx#stx-pair? _%tl4647346627%_)
                                (let ((_%e4647446630%_
                                       (gx#syntax-e _%tl4647346627%_)))
                                  (let ((_%tl4647646637%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4647446630%_)))
                                        (_%hd4647546634%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4647446630%_))))
                                    (if (gx#stx-null? _%tl4647646637%_)
                                        (_%__match4891848919%_
                                         _%e4646846610%_
                                         _%hd4646946614%_
                                         _%tl4647046617%_
                                         _%e4647146620%_
                                         _%hd4647246624%_
                                         _%tl4647346627%_
                                         _%e4647446630%_
                                         _%hd4647546634%_
                                         _%tl4647646637%_)
                                        (if (gx#stx-pair? _%hd4647246624%_)
                                            (let ((_%e4648746531%_
                                                   (gx#syntax-e
                                                    _%hd4647246624%_)))
                                              (let ((_%tl4648946538%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4648746531%_)))
                                                    (_%hd4648846535%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4648746531%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4647346627%_)
                                                    (let ((_%__splice4889648897%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4647346627%_
                                                            '0)))
                                                      (let ((_%tl4649246544%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4889648897%_ '1)))
                    (_%target4649046541%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4889648897%_ '0))))
                (if (gx#stx-null? _%tl4649246544%_)
                    (_%__match4894448945%_
                     _%e4646846610%_
                     _%hd4646946614%_
                     _%tl4647046617%_
                     _%e4647146620%_
                     _%hd4647246624%_
                     _%tl4647346627%_
                     _%e4648746531%_
                     _%hd4648846535%_
                     _%tl4648946538%_
                     _%__splice4889648897%_
                     _%target4649046541%_
                     _%tl4649246544%_)
                    (let () (declare (not safe)) (_%g4646446504%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4646446504%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4646446504%_))))))
                                (if (gx#stx-pair? _%hd4647246624%_)
                                    (let ((_%e4648746531%_
                                           (gx#syntax-e _%hd4647246624%_)))
                                      (let ((_%tl4648946538%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4648746531%_)))
                                            (_%hd4648846535%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4648746531%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4647346627%_)
                                            (let ((_%__splice4889648897%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4647346627%_
                                                    '0)))
                                              (let ((_%tl4649246544%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4889648897%_
                                                        '1)))
                                                    (_%target4649046541%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4889648897%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4649246544%_)
                                                    (_%__match4894448945%_
                                                     _%e4646846610%_
                                                     _%hd4646946614%_
                                                     _%tl4647046617%_
                                                     _%e4647146620%_
                                                     _%hd4647246624%_
                                                     _%tl4647346627%_
                                                     _%e4648746531%_
                                                     _%hd4648846535%_
                                                     _%tl4648946538%_
                                                     _%__splice4889648897%_
                                                     _%target4649046541%_
                                                     _%tl4649246544%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4646446504%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4646446504%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4646446504%_))))))
                        (let () (declare (not safe)) (_%g4646446504%_)))))
                (let () (declare (not safe)) (_%g4646446504%_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_%stx46662%_)
       (let* ((_%g4666546685%_
               (lambda (_%g4666646681%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4666646681%_)))
              (_%g4666446754%_
               (lambda (_%g4666646689%_)
                 (if (gx#stx-pair? _%g4666646689%_)
                     (let ((_%e4666846692%_ (gx#syntax-e _%g4666646689%_)))
                       (let ((_%hd4666946696%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4666846692%_)))
                             (_%tl4667046699%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4666846692%_))))
                         (if (gx#stx-pair/null? _%tl4667046699%_)
                             (let ((_g49039_
                                    (gx#syntax-split-splice
                                     _%tl4667046699%_
                                     '0)))
                               (begin
                                 (let ((_g49040_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g49039_)
                                              (##values-length _g49039_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g49040_ 2)))
                                       (error "Context expects 2 values"
                                              _g49040_)))
                                 (let ((_%target4667146702%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g49039_ 0)))
                                       (_%tl4667346705%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g49039_ 1))))
                                   (if (gx#stx-null? _%tl4667346705%_)
                                       (letrec ((_%loop4667446708%_
                                                 (lambda (_%hd4667246712%_
                                                          _%body4667846715%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4667246712%_)
                                                       (let ((_%e4667546717%_
                                                              (gx#syntax-e
                                                               _%hd4667246712%_)))
                                                         (let ((_%lp-hd4667646721%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4667546717%_)))
                       (_%lp-tl4667746724%_
                        (let () (declare (not safe)) (##cdr _%e4667546717%_))))
                   (_%loop4667446708%_
                    _%lp-tl4667746724%_
                    (cons _%lp-hd4667646721%_ _%body4667846715%_))))
               (let ((_%body4667946727%_ (reverse _%body4667846715%_)))
                 ((lambda (_%g4666746730%_)
                    (cons 'phi:
                          (cons '1
                                (foldr (lambda (_%g4674546748%_
                                                _%g4674646751%_)
                                         (cons _%g4674546748%_
                                               _%g4674646751%_))
                                       '()
                                       _%g4666746730%_))))
                  _%body4667946727%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4667446708%_
                                          _%target4667146702%_
                                          '()))
                                       (_%g4666546685%_ _%g4666646689%_)))))
                             (_%g4666546685%_ _%g4666646689%_))))
                     (_%g4666546685%_ _%g4666646689%_)))))
         (_%g4666446754%_ _%stx46662%_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_%stx46759%_)
       (let* ((_%g4676246782%_
               (lambda (_%g4676346778%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4676346778%_)))
              (_%g4676146851%_
               (lambda (_%g4676346786%_)
                 (if (gx#stx-pair? _%g4676346786%_)
                     (let ((_%e4676546789%_ (gx#syntax-e _%g4676346786%_)))
                       (let ((_%hd4676646793%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4676546789%_)))
                             (_%tl4676746796%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4676546789%_))))
                         (if (gx#stx-pair/null? _%tl4676746796%_)
                             (let ((_g49041_
                                    (gx#syntax-split-splice
                                     _%tl4676746796%_
                                     '0)))
                               (begin
                                 (let ((_g49042_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g49041_)
                                              (##values-length _g49041_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g49042_ 2)))
                                       (error "Context expects 2 values"
                                              _g49042_)))
                                 (let ((_%target4676846799%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g49041_ 0)))
                                       (_%tl4677046802%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g49041_ 1))))
                                   (if (gx#stx-null? _%tl4677046802%_)
                                       (letrec ((_%loop4677146805%_
                                                 (lambda (_%hd4676946809%_
                                                          _%body4677546812%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4676946809%_)
                                                       (let ((_%e4677246814%_
                                                              (gx#syntax-e
                                                               _%hd4676946809%_)))
                                                         (let ((_%lp-hd4677346818%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4677246814%_)))
                       (_%lp-tl4677446821%_
                        (let () (declare (not safe)) (##cdr _%e4677246814%_))))
                   (_%loop4677146805%_
                    _%lp-tl4677446821%_
                    (cons _%lp-hd4677346818%_ _%body4677546812%_))))
               (let ((_%body4677646824%_ (reverse _%body4677546812%_)))
                 ((lambda (_%g4676446827%_)
                    (cons 'phi:
                          (cons '-1
                                (foldr (lambda (_%g4684246845%_
                                                _%g4684346848%_)
                                         (cons _%g4684246845%_
                                               _%g4684346848%_))
                                       '()
                                       _%g4676446827%_))))
                  _%body4677646824%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4677146805%_
                                          _%target4676846799%_
                                          '()))
                                       (_%g4676246782%_ _%g4676346786%_)))))
                             (_%g4676246782%_ _%g4676346786%_))))
                     (_%g4676246782%_ _%g4676346786%_)))))
         (_%g4676146851%_ _%stx46759%_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_%stx46856%_)
       (let* ((_%g4685946883%_
               (lambda (_%g4686046879%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4686046879%_)))
              (_%g4685847009%_
               (lambda (_%g4686046887%_)
                 (if (gx#stx-pair? _%g4686046887%_)
                     (let ((_%e4686346890%_ (gx#syntax-e _%g4686046887%_)))
                       (let ((_%hd4686446894%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4686346890%_)))
                             (_%tl4686546897%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4686346890%_))))
                         (if (gx#stx-pair? _%tl4686546897%_)
                             (let ((_%e4686646900%_
                                    (gx#syntax-e _%tl4686546897%_)))
                               (let ((_%hd4686746904%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4686646900%_)))
                                     (_%tl4686846907%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4686646900%_))))
                                 (if (gx#stx-pair/null? _%tl4686846907%_)
                                     (let ((_g49043_
                                            (gx#syntax-split-splice
                                             _%tl4686846907%_
                                             '0)))
                                       (begin
                                         (let ((_g49044_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49043_)
                                                      (##values-length
                                                       _g49043_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49044_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49044_)))
                                         (let ((_%target4686946910%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49043_ 0)))
                                               (_%tl4687146913%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49043_ 1))))
                                           (if (gx#stx-null? _%tl4687146913%_)
                                               (letrec ((_%loop4687246916%_
                                                         (lambda (_%hd4687046920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4687646923%_)
                   (if (gx#stx-pair? _%hd4687046920%_)
                       (let ((_%e4687346925%_ (gx#syntax-e _%hd4687046920%_)))
                         (let ((_%lp-hd4687446929%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4687346925%_)))
                               (_%lp-tl4687546932%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4687346925%_))))
                           (_%loop4687246916%_
                            _%lp-tl4687546932%_
                            (cons _%lp-hd4687446929%_ _%id4687646923%_))))
                       (let ((_%id4687746935%_ (reverse _%id4687646923%_)))
                         ((lambda (_%g4686146938%_ _%g4686246940%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4695746960%_
                                                 _%g4695846963%_)
                                          (cons _%g4695746960%_
                                                _%g4695846963%_))
                                        '()
                                        _%g4686146938%_))
                                (let* ((_%keys46974%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4696546968%_
                                                         _%g4696646971%_)
                                                  (cons _%g4696546968%_
                                                        _%g4696646971%_))
                                                '()
                                                _%g4686146938%_)))
                                       (_%keytab46985%_
                                        (let ((_%ht46977%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4697946981%_)
                                             (hash-put!
                                              _%ht46977%_
                                              _%g4697946981%_
                                              '#t))
                                           _%keys46974%_)
                                          _%ht46977%_))
                                       (_%imports46988%_
                                        (gx#core-expand-import-source
                                         _%g4686246940%_))
                                       (_%fold-e47004%_
                                        (letrec ((_%fold-e46991%_
                                                  (lambda (_%in46994%_
                                                           _%r46996%_)
                                                    (if (gx#module-import?
                                                         _%in46994%_)
                                                        (if (hash-get
                                                             _%keytab46985%_
                                                             (gx#module-import-name
                                                              _%in46994%_))
                                                            (cons _%in46994%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r46996%_)
                    _%r46996%_)
                (if (gx#import-set? _%in46994%_)
                    (foldl _%fold-e46991%_
                           _%r46996%_
                           (gx#import-set-imports _%in46994%_))
                    _%r46996%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e46991%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e47004%_
                                               '()
                                               _%imports46988%_)))
                                (_%g4685946883%_ _%g4686046887%_)))
                          _%id4687746935%_
                          _%hd4686746904%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4687246916%_
                                                  _%target4686946910%_
                                                  '()))
                                               (_%g4685946883%_
                                                _%g4686046887%_)))))
                                     (_%g4685946883%_ _%g4686046887%_))))
                             (_%g4685946883%_ _%g4686046887%_))))
                     (_%g4685946883%_ _%g4686046887%_)))))
         (_%g4685847009%_ _%stx46856%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_%stx47014%_)
       (let* ((_%g4701747041%_
               (lambda (_%g4701847037%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4701847037%_)))
              (_%g4701647167%_
               (lambda (_%g4701847045%_)
                 (if (gx#stx-pair? _%g4701847045%_)
                     (let ((_%e4702147048%_ (gx#syntax-e _%g4701847045%_)))
                       (let ((_%hd4702247052%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4702147048%_)))
                             (_%tl4702347055%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4702147048%_))))
                         (if (gx#stx-pair? _%tl4702347055%_)
                             (let ((_%e4702447058%_
                                    (gx#syntax-e _%tl4702347055%_)))
                               (let ((_%hd4702547062%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4702447058%_)))
                                     (_%tl4702647065%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4702447058%_))))
                                 (if (gx#stx-pair/null? _%tl4702647065%_)
                                     (let ((_g49045_
                                            (gx#syntax-split-splice
                                             _%tl4702647065%_
                                             '0)))
                                       (begin
                                         (let ((_g49046_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49045_)
                                                      (##values-length
                                                       _g49045_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49046_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49046_)))
                                         (let ((_%target4702747068%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49045_ 0)))
                                               (_%tl4702947071%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49045_ 1))))
                                           (if (gx#stx-null? _%tl4702947071%_)
                                               (letrec ((_%loop4703047074%_
                                                         (lambda (_%hd4702847078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4703447081%_)
                   (if (gx#stx-pair? _%hd4702847078%_)
                       (let ((_%e4703147083%_ (gx#syntax-e _%hd4702847078%_)))
                         (let ((_%lp-hd4703247087%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4703147083%_)))
                               (_%lp-tl4703347090%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4703147083%_))))
                           (_%loop4703047074%_
                            _%lp-tl4703347090%_
                            (cons _%lp-hd4703247087%_ _%id4703447081%_))))
                       (let ((_%id4703547093%_ (reverse _%id4703447081%_)))
                         ((lambda (_%g4701947096%_ _%g4702047098%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4711547118%_
                                                 _%g4711647121%_)
                                          (cons _%g4711547118%_
                                                _%g4711647121%_))
                                        '()
                                        _%g4701947096%_))
                                (let* ((_%keys47132%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4712347126%_
                                                         _%g4712447129%_)
                                                  (cons _%g4712347126%_
                                                        _%g4712447129%_))
                                                '()
                                                _%g4701947096%_)))
                                       (_%keytab47143%_
                                        (let ((_%ht47135%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4713747139%_)
                                             (hash-put!
                                              _%ht47135%_
                                              _%g4713747139%_
                                              '#t))
                                           _%keys47132%_)
                                          _%ht47135%_))
                                       (_%imports47146%_
                                        (gx#core-expand-import-source
                                         _%g4702047098%_))
                                       (_%fold-e47162%_
                                        (letrec ((_%fold-e47149%_
                                                  (lambda (_%in47152%_
                                                           _%r47154%_)
                                                    (if (gx#module-import?
                                                         _%in47152%_)
                                                        (if (hash-get
                                                             _%keytab47143%_
                                                             (gx#module-import-name
                                                              _%in47152%_))
                                                            _%r47154%_
                                                            (cons _%in47152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r47154%_))
                (if (gx#import-set? _%in47152%_)
                    (foldl _%fold-e47149%_
                           _%r47154%_
                           (gx#import-set-imports _%in47152%_))
                    (cons _%in47152%_ _%r47154%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47149%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e47162%_
                                               '()
                                               _%imports47146%_)))
                                (_%g4701747041%_ _%g4701847045%_)))
                          _%id4703547093%_
                          _%hd4702547062%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4703047074%_
                                                  _%target4702747068%_
                                                  '()))
                                               (_%g4701747041%_
                                                _%g4701847045%_)))))
                                     (_%g4701747041%_ _%g4701847045%_))))
                             (_%g4701747041%_ _%g4701847045%_))))
                     (_%g4701747041%_ _%g4701847045%_)))))
         (_%g4701647167%_ _%stx47014%_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_%in47219%_ _%rename47221%_)
      (gx#make-module-import
       (gx#module-import-source _%in47219%_)
       _%rename47221%_
       (gx#module-import-phi _%in47219%_)
       (gx#module-import-weak? _%in47219%_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_%name47172%_ _%pre47174%_)
      (let* ((_%name4717547183%_ _%name47172%_)
             (_%else4717747195%_
              (lambda () (make-symbol _%pre47174%_ _%name47172%_)))
             (_%K4717947203%_
              (lambda (_%mark47199%_ _%id47201%_)
                (cons (make-symbol _%pre47174%_ _%id47201%_) _%mark47199%_))))
        (if (pair? _%name4717547183%_)
            (let ((_%hd4718047207%_
                   (let () (declare (not safe)) (##car _%name4717547183%_)))
                  (_%tl4718147210%_
                   (let () (declare (not safe)) (##cdr _%name4717547183%_))))
              (let* ((_%id47213%_ _%hd4718047207%_)
                     (_%mark47216%_ _%tl4718147210%_))
                (_%K4717947203%_ _%mark47216%_ _%id47213%_)))
            (_%else4717747195%_)))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_%stx47223%_)
       (let* ((_%g4722647259%_
               (lambda (_%g4722747255%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4722747255%_)))
              (_%g4722547450%_
               (lambda (_%g4722747263%_)
                 (if (gx#stx-pair? _%g4722747263%_)
                     (let ((_%e4723147266%_ (gx#syntax-e _%g4722747263%_)))
                       (let ((_%hd4723247270%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4723147266%_)))
                             (_%tl4723347273%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4723147266%_))))
                         (if (gx#stx-pair? _%tl4723347273%_)
                             (let ((_%e4723447276%_
                                    (gx#syntax-e _%tl4723347273%_)))
                               (let ((_%hd4723547280%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4723447276%_)))
                                     (_%tl4723647283%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4723447276%_))))
                                 (if (gx#stx-pair/null? _%tl4723647283%_)
                                     (let ((_g49047_
                                            (gx#syntax-split-splice
                                             _%tl4723647283%_
                                             '0)))
                                       (begin
                                         (let ((_g49048_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49047_)
                                                      (##values-length
                                                       _g49047_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49048_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49048_)))
                                         (let ((_%target4723747286%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49047_ 0)))
                                               (_%tl4723947289%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49047_ 1))))
                                           (if (gx#stx-null? _%tl4723947289%_)
                                               (letrec ((_%loop4724047292%_
                                                         (lambda (_%hd4723847296%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4724447299%_
                          _%id4724547300%_)
                   (if (gx#stx-pair? _%hd4723847296%_)
                       (let ((_%e4724147302%_ (gx#syntax-e _%hd4723847296%_)))
                         (let ((_%lp-hd4724247306%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4724147302%_)))
                               (_%lp-tl4724347309%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4724147302%_))))
                           (if (gx#stx-pair? _%lp-hd4724247306%_)
                               (let ((_%e4724847312%_
                                      (gx#syntax-e _%lp-hd4724247306%_)))
                                 (let ((_%hd4724947316%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4724847312%_)))
                                       (_%tl4725047319%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4724847312%_))))
                                   (if (gx#stx-pair? _%tl4725047319%_)
                                       (let ((_%e4725147322%_
                                              (gx#syntax-e _%tl4725047319%_)))
                                         (let ((_%hd4725247326%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4725147322%_)))
                                               (_%tl4725347329%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4725147322%_))))
                                           (if (gx#stx-null? _%tl4725347329%_)
                                               (_%loop4724047292%_
                                                _%lp-tl4724347309%_
                                                (cons _%hd4725247326%_
                                                      _%new-id4724447299%_)
                                                (cons _%hd4724947316%_
                                                      _%id4724547300%_))
                                               (_%g4722647259%_
                                                _%g4722747263%_))))
                                       (_%g4722647259%_ _%g4722747263%_))))
                               (_%g4722647259%_ _%g4722747263%_))))
                       (let ((_%new-id4724647332%_
                              (reverse _%new-id4724447299%_))
                             (_%id4724747334%_ (reverse _%id4724547300%_)))
                         ((lambda (_%g4722847336%_
                                   _%g4722947338%_
                                   _%g4723047339%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4735747360%_
                                                      _%g4735847363%_)
                                               (cons _%g4735747360%_
                                                     _%g4735847363%_))
                                             '()
                                             _%g4722947338%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4736547368%_
                                                      _%g4736647371%_)
                                               (cons _%g4736547368%_
                                                     _%g4736647371%_))
                                             '()
                                             _%g4722847336%_)))
                                (let* ((_%keytab47374%_ (make-hash-table))
                                       (_%found47377%_ (make-hash-table))
                                       (_%_47400%_
                                        (for-each
                                         (lambda (_%id47380%_ _%new-id47382%_)
                                           (hash-put!
                                            _%keytab47374%_
                                            (gx#core-identifier-key
                                             _%id47380%_)
                                            (gx#core-identifier-key
                                             _%new-id47382%_)))
                                         (foldr (lambda (_%g4738347386%_
                                                         _%g4738447389%_)
                                                  (cons _%g4738347386%_
                                                        _%g4738447389%_))
                                                '()
                                                _%g4722947338%_)
                                         (foldr (lambda (_%g4739147394%_
                                                         _%g4739247397%_)
                                                  (cons _%g4739147394%_
                                                        _%g4739247397%_))
                                                '()
                                                _%g4722847336%_)))
                                       (_%imports47403%_
                                        (gx#core-expand-import-source
                                         _%g4723047339%_))
                                       (_%fold-e47431%_
                                        (letrec ((_%fold-e47406%_
                                                  (lambda (_%in47409%_
                                                           _%r47411%_)
                                                    (if (gx#module-import?
                                                         _%in47409%_)
                                                        (let* ((_%name47415%_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in47409%_))
                       (_%$e47418%_ (hash-get _%keytab47374%_ _%name47415%_)))
                  (if _%$e47418%_
                      ((lambda (_%rename47422%_)
                         (hash-put! _%found47377%_ _%name47415%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                _%in47409%_
                                _%rename47422%_)
                               _%r47411%_))
                       _%$e47418%_)
                      (cons _%in47409%_ _%r47411%_)))
                (if (gx#import-set? _%in47409%_)
                    (foldl _%fold-e47406%_
                           _%r47411%_
                           (gx#import-set-imports _%in47409%_))
                    (cons _%in47409%_ _%r47411%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47406%_))
                                       (_%new-imports47434%_
                                        (foldl _%fold-e47431%_
                                               '()
                                               _%imports47403%_)))
                                  (for-each
                                   (lambda (_%id47439%_)
                                     (if (hash-get
                                          _%found47377%_
                                          (gx#core-identifier-key _%id47439%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _%stx47223%_
                                          _%id47439%_)))
                                   (foldr (lambda (_%g4744147444%_
                                                   _%g4744247447%_)
                                            (cons _%g4744147444%_
                                                  _%g4744247447%_))
                                          '()
                                          _%g4722947338%_))
                                  (cons 'begin: _%new-imports47434%_))
                                (_%g4722647259%_ _%g4722747263%_)))
                          _%new-id4724647332%_
                          _%id4724747334%_
                          _%hd4723547280%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4724047292%_
                                                  _%target4723747286%_
                                                  '()
                                                  '()))
                                               (_%g4722647259%_
                                                _%g4722747263%_)))))
                                     (_%g4722647259%_ _%g4722747263%_))))
                             (_%g4722647259%_ _%g4722747263%_))))
                     (_%g4722647259%_ _%g4722747263%_)))))
         (_%g4722547450%_ _%stx47223%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_%stx47455%_)
       (let* ((_%g4745847476%_
               (lambda (_%g4745947472%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4745947472%_)))
              (_%g4745747561%_
               (lambda (_%g4745947480%_)
                 (if (gx#stx-pair? _%g4745947480%_)
                     (let ((_%e4746247483%_ (gx#syntax-e _%g4745947480%_)))
                       (let ((_%hd4746347487%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4746247483%_)))
                             (_%tl4746447490%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4746247483%_))))
                         (if (gx#stx-pair? _%tl4746447490%_)
                             (let ((_%e4746547493%_
                                    (gx#syntax-e _%tl4746447490%_)))
                               (let ((_%hd4746647497%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4746547493%_)))
                                     (_%tl4746747500%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4746547493%_))))
                                 (if (gx#stx-pair? _%tl4746747500%_)
                                     (let ((_%e4746847503%_
                                            (gx#syntax-e _%tl4746747500%_)))
                                       (let ((_%hd4746947507%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4746847503%_)))
                                             (_%tl4747047510%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4746847503%_))))
                                         (if (gx#stx-null? _%tl4747047510%_)
                                             ((lambda (_%g4746047513%_
                                                       _%g4746147515%_)
                                                (if (gx#identifier?
                                                     _%g4746047513%_)
                                                    (let* ((_%pre47531%_
                                                            (gx#stx-e
                                                             _%g4746047513%_))
                                                           (_%imports47534%_
                                                            (gx#core-expand-import-source
                                                             _%g4746147515%_))
                                                           (_%rename-e47540%_
                                                            (lambda (_%name47537%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name47537%_
                                                               _%pre47531%_)))
                                                           (_%fold-e47556%_
                                                            (letrec ((_%fold-e47543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%in47546%_ _%r47548%_)
                                (if (gx#module-import? _%in47546%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                           _%in47546%_
                                           (_%rename-e47540%_
                                            (gx#module-import-name
                                             _%in47546%_)))
                                          _%r47548%_)
                                    (if (gx#import-set? _%in47546%_)
                                        (foldl _%fold-e47543%_
                                               _%r47548%_
                                               (gx#import-set-imports
                                                _%in47546%_))
                                        (cons _%in47546%_ _%r47548%_))))))
                      _%fold-e47543%_)))
              (cons 'begin: (foldl _%fold-e47556%_ '() _%imports47534%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4745847476%_
                                                     _%g4745947480%_)))
                                              _%hd4746947507%_
                                              _%hd4746647497%_)
                                             (_%g4745847476%_
                                              _%g4745947480%_))))
                                     (_%g4745847476%_ _%g4745947480%_))))
                             (_%g4745847476%_ _%g4745947480%_))))
                     (_%g4745847476%_ _%g4745947480%_)))))
         (_%g4745747561%_ _%stx47455%_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_%stx47565%_)
       (letrec ((_%flatten47568%_
                 (lambda (_%list-of-lists47819%_)
                   (foldr (lambda (_%v47822%_ _%acc47824%_)
                            (if (null? _%v47822%_)
                                _%acc47824%_
                                (if (pair? _%v47822%_)
                                    (append (_%flatten47568%_ _%v47822%_)
                                            _%acc47824%_)
                                    (cons _%v47822%_ _%acc47824%_))))
                          '()
                          _%list-of-lists47819%_)))
                (_%expand-path47570%_
                 (lambda (_%top47689%_ _%mod47691%_)
                   (let* ((_%__stx4894748948%_ _%mod47691%_)
                          (_%g4769447716%_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%__stx4894748948%_))))
                     (let ((_%__kont4895048951%_
                            (lambda (_%g4769647782%_ _%g4769747784%_)
                              (map (lambda (_%mod47799%_)
                                     (gx#stx-identifier
                                      _%top47689%_
                                      _%top47689%_
                                      '"/"
                                      _%mod47799%_))
                                   (_%flatten47568%_
                                    (map (lambda (_%g4780147803%_)
                                           (_%expand-path47570%_
                                            _%g4769747784%_
                                            _%g4780147803%_))
                                         (foldr (lambda (_%g4780647809%_
                                                         _%g4780747812%_)
                                                  (cons _%g4780647809%_
                                                        _%g4780747812%_))
                                                '()
                                                _%g4769647782%_))))))
                           (_%__kont4895448955%_
                            (lambda (_%g4771047723%_)
                              (gx#stx-identifier
                               _%top47689%_
                               _%top47689%_
                               '"/"
                               _%g4771047723%_))))
                       (let* ((_%g4769347737%_
                               (lambda ()
                                 (let ((_%g4771047723%_ _%__stx4894748948%_))
                                   (if (or (gx#identifier? _%g4771047723%_)
                                           (gx#stx-fixnum? _%g4771047723%_))
                                       (_%__kont4895448955%_ _%g4771047723%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4769447716%_))))))
                              (_%__match4897048971%_
                               (lambda (_%e4769847744%_
                                        _%hd4769947748%_
                                        _%tl4770047751%_
                                        _%__splice4895248953%_
                                        _%target4770147754%_
                                        _%tl4770347757%_)
                                 (letrec ((_%loop4770447760%_
                                           (lambda (_%hd4770247764%_
                                                    _%mod4770847767%_)
                                             (if (gx#stx-pair?
                                                  _%hd4770247764%_)
                                                 (let ((_%e4770547769%_
                                                        (gx#syntax-e
                                                         _%hd4770247764%_)))
                                                   (let ((_%lp-tl4770747776%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4770547769%_)))
                                                         (_%lp-hd4770647773%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4770547769%_))))
                                                     (_%loop4770447760%_
                                                      _%lp-tl4770747776%_
                                                      (cons _%lp-hd4770647773%_
                                                            _%mod4770847767%_))))
                                                 (let ((_%mod4770947779%_
                                                        (reverse _%mod4770847767%_)))
                                                   (_%__kont4895048951%_
                                                    _%mod4770947779%_
                                                    _%hd4769947748%_))))))
                                   (_%loop4770447760%_
                                    _%target4770147754%_
                                    '())))))
                         (if (gx#stx-pair? _%__stx4894748948%_)
                             (let ((_%e4769847744%_
                                    (gx#syntax-e _%__stx4894748948%_)))
                               (let ((_%tl4770047751%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4769847744%_)))
                                     (_%hd4769947748%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4769847744%_))))
                                 (if (gx#stx-pair/null? _%tl4770047751%_)
                                     (let ((_%__splice4895248953%_
                                            (gx#syntax-split-splice->vector
                                             _%tl4770047751%_
                                             '0)))
                                       (let ((_%tl4770347757%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4895248953%_
                                                 '1)))
                                             (_%target4770147754%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4895248953%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4770347757%_)
                                             (_%__match4897048971%_
                                              _%e4769847744%_
                                              _%hd4769947748%_
                                              _%tl4770047751%_
                                              _%__splice4895248953%_
                                              _%target4770147754%_
                                              _%tl4770347757%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4769347737%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4769347737%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4769347737%_)))))))))
         (let* ((_%g4757247596%_
                 (lambda (_%g4757347592%_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%g4757347592%_)))
                (_%g4757147685%_
                 (lambda (_%g4757347600%_)
                   (if (gx#stx-pair? _%g4757347600%_)
                       (let ((_%e4757647603%_ (gx#syntax-e _%g4757347600%_)))
                         (let ((_%hd4757747607%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4757647603%_)))
                               (_%tl4757847610%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4757647603%_))))
                           (if (gx#stx-pair? _%tl4757847610%_)
                               (let ((_%e4757947613%_
                                      (gx#syntax-e _%tl4757847610%_)))
                                 (let ((_%hd4758047617%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4757947613%_)))
                                       (_%tl4758147620%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4757947613%_))))
                                   (if (gx#stx-pair/null? _%tl4758147620%_)
                                       (let ((_g49049_
                                              (gx#syntax-split-splice
                                               _%tl4758147620%_
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
                                           (let ((_%target4758247623%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g49049_ 0)))
                                                 (_%tl4758447626%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g49049_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl4758447626%_)
                                                 (letrec ((_%loop4758547629%_
                                                           (lambda (_%hd4758347633%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%mod4758947636%_)
                     (if (gx#stx-pair? _%hd4758347633%_)
                         (let ((_%e4758647638%_
                                (gx#syntax-e _%hd4758347633%_)))
                           (let ((_%lp-hd4758747642%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4758647638%_)))
                                 (_%lp-tl4758847645%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4758647638%_))))
                             (_%loop4758547629%_
                              _%lp-tl4758847645%_
                              (cons _%lp-hd4758747642%_ _%mod4758947636%_))))
                         (let ((_%mod4759047648%_ (reverse _%mod4758947636%_)))
                           ((lambda (_%g4757447651%_ _%g4757547653%_)
                              (cons 'begin:
                                    (_%flatten47568%_
                                     (map (lambda (_%g4767147673%_)
                                            (_%expand-path47570%_
                                             _%g4757547653%_
                                             _%g4767147673%_))
                                          (foldr (lambda (_%g4767647679%_
                                                          _%g4767747682%_)
                                                   (cons _%g4767647679%_
                                                         _%g4767747682%_))
                                                 '()
                                                 _%g4757447651%_)))))
                            _%mod4759047648%_
                            _%hd4758047617%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop4758547629%_
                                                    _%target4758247623%_
                                                    '()))
                                                 (_%g4757247596%_
                                                  _%g4757347600%_)))))
                                       (_%g4757247596%_ _%g4757347600%_))))
                               (_%g4757247596%_ _%g4757347600%_))))
                       (_%g4757247596%_ _%g4757347600%_)))))
           (_%g4757147685%_ _%stx47565%_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_%stx47834%_)
       (let* ((_%g4783747861%_
               (lambda (_%g4783847857%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4783847857%_)))
              (_%g4783647987%_
               (lambda (_%g4783847865%_)
                 (if (gx#stx-pair? _%g4783847865%_)
                     (let ((_%e4784147868%_ (gx#syntax-e _%g4783847865%_)))
                       (let ((_%hd4784247872%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4784147868%_)))
                             (_%tl4784347875%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4784147868%_))))
                         (if (gx#stx-pair? _%tl4784347875%_)
                             (let ((_%e4784447878%_
                                    (gx#syntax-e _%tl4784347875%_)))
                               (let ((_%hd4784547882%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4784447878%_)))
                                     (_%tl4784647885%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4784447878%_))))
                                 (if (gx#stx-pair/null? _%tl4784647885%_)
                                     (let ((_g49051_
                                            (gx#syntax-split-splice
                                             _%tl4784647885%_
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
                                         (let ((_%target4784747888%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49051_ 0)))
                                               (_%tl4784947891%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49051_ 1))))
                                           (if (gx#stx-null? _%tl4784947891%_)
                                               (letrec ((_%loop4785047894%_
                                                         (lambda (_%hd4784847898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4785447901%_)
                   (if (gx#stx-pair? _%hd4784847898%_)
                       (let ((_%e4785147903%_ (gx#syntax-e _%hd4784847898%_)))
                         (let ((_%lp-hd4785247907%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4785147903%_)))
                               (_%lp-tl4785347910%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4785147903%_))))
                           (_%loop4785047894%_
                            _%lp-tl4785347910%_
                            (cons _%lp-hd4785247907%_ _%id4785447901%_))))
                       (let ((_%id4785547913%_ (reverse _%id4785447901%_)))
                         ((lambda (_%g4783947916%_ _%g4784047918%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4793547938%_
                                                 _%g4793647941%_)
                                          (cons _%g4793547938%_
                                                _%g4793647941%_))
                                        '()
                                        _%g4783947916%_))
                                (let* ((_%keys47952%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4794347946%_
                                                         _%g4794447949%_)
                                                  (cons _%g4794347946%_
                                                        _%g4794447949%_))
                                                '()
                                                _%g4783947916%_)))
                                       (_%keytab47963%_
                                        (let ((_%ht47955%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4795747959%_)
                                             (hash-put!
                                              _%ht47955%_
                                              _%g4795747959%_
                                              '#t))
                                           _%keys47952%_)
                                          _%ht47955%_))
                                       (_%exports47966%_
                                        (gx#core-expand-export-source
                                         _%g4784047918%_))
                                       (_%fold-e47982%_
                                        (letrec ((_%fold-e47969%_
                                                  (lambda (_%out47972%_
                                                           _%r47974%_)
                                                    (if (gx#module-export?
                                                         _%out47972%_)
                                                        (if (hash-get
                                                             _%keytab47963%_
                                                             (gx#module-export-name
                                                              _%out47972%_))
                                                            _%r47974%_
                                                            (cons _%out47972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r47974%_))
                (if (gx#export-set? _%out47972%_)
                    (foldl _%fold-e47969%_
                           _%r47974%_
                           (gx#export-set-exports _%out47972%_))
                    _%r47974%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47969%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e47982%_
                                               '()
                                               _%exports47966%_)))
                                (_%g4783747861%_ _%g4783847865%_)))
                          _%id4785547913%_
                          _%hd4784547882%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4785047894%_
                                                  _%target4784747888%_
                                                  '()))
                                               (_%g4783747861%_
                                                _%g4783847865%_)))))
                                     (_%g4783747861%_ _%g4783847865%_))))
                             (_%g4783747861%_ _%g4783847865%_))))
                     (_%g4783747861%_ _%g4783847865%_)))))
         (_%g4783647987%_ _%stx47834%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-from-out|
    (gx#make-export-expander
     (lambda (_%stx47992%_)
       (let* ((_%g4799548019%_
               (lambda (_%g4799648015%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4799648015%_)))
              (_%g4799448149%_
               (lambda (_%g4799648023%_)
                 (if (gx#stx-pair? _%g4799648023%_)
                     (let ((_%e4799948026%_ (gx#syntax-e _%g4799648023%_)))
                       (let ((_%hd4800048030%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4799948026%_)))
                             (_%tl4800148033%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4799948026%_))))
                         (if (gx#stx-pair? _%tl4800148033%_)
                             (let ((_%e4800248036%_
                                    (gx#syntax-e _%tl4800148033%_)))
                               (let ((_%hd4800348040%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4800248036%_)))
                                     (_%tl4800448043%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4800248036%_))))
                                 (if (gx#stx-pair/null? _%tl4800448043%_)
                                     (let ((_g49053_
                                            (gx#syntax-split-splice
                                             _%tl4800448043%_
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
                                         (let ((_%target4800548046%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49053_ 0)))
                                               (_%tl4800748049%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49053_ 1))))
                                           (if (gx#stx-null? _%tl4800748049%_)
                                               (letrec ((_%loop4800848052%_
                                                         (lambda (_%hd4800648056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%filter-out4801248059%_)
                   (if (gx#stx-pair? _%hd4800648056%_)
                       (let ((_%e4800948061%_ (gx#syntax-e _%hd4800648056%_)))
                         (let ((_%lp-hd4801048065%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4800948061%_)))
                               (_%lp-tl4801148068%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4800948061%_))))
                           (_%loop4800848052%_
                            _%lp-tl4801148068%_
                            (cons _%lp-hd4801048065%_
                                  _%filter-out4801248059%_))))
                       (let ((_%filter-out4801348071%_
                              (reverse _%filter-out4801248059%_)))
                         ((lambda (_%g4799748074%_ _%g4799848076%_)
                            (let ((_%filtered48094%_ (make-hash-table)))
                              (letrec ((_%fold-out48097%_
                                        (lambda (_%out48139%_ _%r48141%_)
                                          (if (gx#module-export? _%out48139%_)
                                              (cons _%out48139%_ _%r48141%_)
                                              (if (gx#export-set? _%out48139%_)
                                                  (foldl _%fold-out48097%_
                                                         _%r48141%_
                                                         (gx#export-set-exports
                                                          _%out48139%_))
                                                  _%r48141%_)))))
                                (for-each
                                 (lambda (_%src48100%_)
                                   (let* ((_%exports48106%_
                                           (if (gx#identifier? _%src48100%_)
                                               (let ((_%mod48103%_
                                                      (gx#syntax-local-value
                                                       _%src48100%_)))
                                                 (if (gx#module-context?
                                                      _%mod48103%_)
                                                     '#!void
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"not a module context"
                                                      _%src48100%_))
                                                 (gx#module-context-export
                                                  _%mod48103%_))
                                               (gx#core-expand-export-source
                                                _%src48100%_)))
                                          (_%exports48109%_
                                           (foldl _%fold-out48097%_
                                                  '()
                                                  _%exports48106%_)))
                                     (for-each
                                      (lambda (_%out48114%_)
                                        (hash-put!
                                         _%filtered48094%_
                                         (gx#module-export-name _%out48114%_)
                                         '#t))
                                      _%exports48109%_)))
                                 (foldr (lambda (_%g4811648119%_
                                                 _%g4811748122%_)
                                          (cons _%g4811648119%_
                                                _%g4811748122%_))
                                        '()
                                        _%g4799748074%_))
                                (let* ((_%exports48125%_
                                        (gx#core-expand-export-source
                                         _%g4799848076%_))
                                       (_%exports48128%_
                                        (foldl _%fold-out48097%_
                                               '()
                                               _%exports48125%_))
                                       (_%exports48134%_
                                        (filter (lambda (_%out48131%_)
                                                  (not (hash-get
                                                        _%filtered48094%_
                                                        (gx#module-export-name
                                                         _%out48131%_))))
                                                _%exports48128%_)))
                                  (cons 'begin: _%exports48134%_)))))
                          _%filter-out4801348071%_
                          _%hd4800348040%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4800848052%_
                                                  _%target4800548046%_
                                                  '()))
                                               (_%g4799548019%_
                                                _%g4799648023%_)))))
                                     (_%g4799548019%_ _%g4799648023%_))))
                             (_%g4799548019%_ _%g4799648023%_))))
                     (_%g4799548019%_ _%g4799648023%_)))))
         (_%g4799448149%_ _%stx47992%_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_%out48154%_ _%rename48156%_)
      (gx#make-module-export
       (gx#module-export-context _%out48154%_)
       (gx#module-export-key _%out48154%_)
       (gx#module-export-phi _%out48154%_)
       _%rename48156%_
       (gx#module-export-weak? _%out48154%_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_%stx48158%_)
       (let* ((_%g4816148194%_
               (lambda (_%g4816248190%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4816248190%_)))
              (_%g4816048385%_
               (lambda (_%g4816248198%_)
                 (if (gx#stx-pair? _%g4816248198%_)
                     (let ((_%e4816648201%_ (gx#syntax-e _%g4816248198%_)))
                       (let ((_%hd4816748205%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4816648201%_)))
                             (_%tl4816848208%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4816648201%_))))
                         (if (gx#stx-pair? _%tl4816848208%_)
                             (let ((_%e4816948211%_
                                    (gx#syntax-e _%tl4816848208%_)))
                               (let ((_%hd4817048215%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4816948211%_)))
                                     (_%tl4817148218%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4816948211%_))))
                                 (if (gx#stx-pair/null? _%tl4817148218%_)
                                     (let ((_g49055_
                                            (gx#syntax-split-splice
                                             _%tl4817148218%_
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
                                         (let ((_%target4817248221%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49055_ 0)))
                                               (_%tl4817448224%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49055_ 1))))
                                           (if (gx#stx-null? _%tl4817448224%_)
                                               (letrec ((_%loop4817548227%_
                                                         (lambda (_%hd4817348231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4817948234%_
                          _%id4818048235%_)
                   (if (gx#stx-pair? _%hd4817348231%_)
                       (let ((_%e4817648237%_ (gx#syntax-e _%hd4817348231%_)))
                         (let ((_%lp-hd4817748241%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4817648237%_)))
                               (_%lp-tl4817848244%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4817648237%_))))
                           (if (gx#stx-pair? _%lp-hd4817748241%_)
                               (let ((_%e4818348247%_
                                      (gx#syntax-e _%lp-hd4817748241%_)))
                                 (let ((_%hd4818448251%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4818348247%_)))
                                       (_%tl4818548254%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4818348247%_))))
                                   (if (gx#stx-pair? _%tl4818548254%_)
                                       (let ((_%e4818648257%_
                                              (gx#syntax-e _%tl4818548254%_)))
                                         (let ((_%hd4818748261%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4818648257%_)))
                                               (_%tl4818848264%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4818648257%_))))
                                           (if (gx#stx-null? _%tl4818848264%_)
                                               (_%loop4817548227%_
                                                _%lp-tl4817848244%_
                                                (cons _%hd4818748261%_
                                                      _%new-id4817948234%_)
                                                (cons _%hd4818448251%_
                                                      _%id4818048235%_))
                                               (_%g4816148194%_
                                                _%g4816248198%_))))
                                       (_%g4816148194%_ _%g4816248198%_))))
                               (_%g4816148194%_ _%g4816248198%_))))
                       (let ((_%new-id4818148267%_
                              (reverse _%new-id4817948234%_))
                             (_%id4818248269%_ (reverse _%id4818048235%_)))
                         ((lambda (_%g4816348271%_
                                   _%g4816448273%_
                                   _%g4816548274%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4829248295%_
                                                      _%g4829348298%_)
                                               (cons _%g4829248295%_
                                                     _%g4829348298%_))
                                             '()
                                             _%g4816448273%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4830048303%_
                                                      _%g4830148306%_)
                                               (cons _%g4830048303%_
                                                     _%g4830148306%_))
                                             '()
                                             _%g4816348271%_)))
                                (let* ((_%keytab48309%_ (make-hash-table))
                                       (_%found48312%_ (make-hash-table))
                                       (_%_48335%_
                                        (for-each
                                         (lambda (_%id48315%_ _%new-id48317%_)
                                           (hash-put!
                                            _%keytab48309%_
                                            (gx#core-identifier-key
                                             _%id48315%_)
                                            (gx#core-identifier-key
                                             _%new-id48317%_)))
                                         (foldr (lambda (_%g4831848321%_
                                                         _%g4831948324%_)
                                                  (cons _%g4831848321%_
                                                        _%g4831948324%_))
                                                '()
                                                _%g4816448273%_)
                                         (foldr (lambda (_%g4832648329%_
                                                         _%g4832748332%_)
                                                  (cons _%g4832648329%_
                                                        _%g4832748332%_))
                                                '()
                                                _%g4816348271%_)))
                                       (_%exports48338%_
                                        (gx#core-expand-export-source
                                         _%g4816548274%_))
                                       (_%fold-e48366%_
                                        (letrec ((_%fold-e48341%_
                                                  (lambda (_%out48344%_
                                                           _%r48346%_)
                                                    (if (gx#module-export?
                                                         _%out48344%_)
                                                        (let* ((_%name48350%_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out48344%_))
                       (_%$e48353%_ (hash-get _%keytab48309%_ _%name48350%_)))
                  (if _%$e48353%_
                      ((lambda (_%rename48357%_)
                         (hash-put! _%found48312%_ _%name48350%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                _%out48344%_
                                _%rename48357%_)
                               _%r48346%_))
                       _%$e48353%_)
                      (cons _%out48344%_ _%r48346%_)))
                (if (gx#export-set? _%out48344%_)
                    (foldl _%fold-e48341%_
                           _%r48346%_
                           (gx#export-set-exports _%out48344%_))
                    (cons _%out48344%_ _%r48346%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e48341%_))
                                       (_%new-exports48369%_
                                        (foldl _%fold-e48366%_
                                               '()
                                               _%exports48338%_)))
                                  (for-each
                                   (lambda (_%id48374%_)
                                     (if (hash-get
                                          _%found48312%_
                                          (gx#core-identifier-key _%id48374%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _%stx48158%_
                                          _%id48374%_)))
                                   (foldr (lambda (_%g4837648379%_
                                                   _%g4837748382%_)
                                            (cons _%g4837648379%_
                                                  _%g4837748382%_))
                                          '()
                                          _%g4816448273%_))
                                  (cons 'begin: _%new-exports48369%_))
                                (_%g4816148194%_ _%g4816248198%_)))
                          _%new-id4818148267%_
                          _%id4818248269%_
                          _%hd4817048215%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4817548227%_
                                                  _%target4817248221%_
                                                  '()
                                                  '()))
                                               (_%g4816148194%_
                                                _%g4816248198%_)))))
                                     (_%g4816148194%_ _%g4816248198%_))))
                             (_%g4816148194%_ _%g4816248198%_))))
                     (_%g4816148194%_ _%g4816248198%_)))))
         (_%g4816048385%_ _%stx48158%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_%stx48390%_)
       (let* ((_%g4839348411%_
               (lambda (_%g4839448407%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4839448407%_)))
              (_%g4839248496%_
               (lambda (_%g4839448415%_)
                 (if (gx#stx-pair? _%g4839448415%_)
                     (let ((_%e4839748418%_ (gx#syntax-e _%g4839448415%_)))
                       (let ((_%hd4839848422%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4839748418%_)))
                             (_%tl4839948425%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4839748418%_))))
                         (if (gx#stx-pair? _%tl4839948425%_)
                             (let ((_%e4840048428%_
                                    (gx#syntax-e _%tl4839948425%_)))
                               (let ((_%hd4840148432%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4840048428%_)))
                                     (_%tl4840248435%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4840048428%_))))
                                 (if (gx#stx-pair? _%tl4840248435%_)
                                     (let ((_%e4840348438%_
                                            (gx#syntax-e _%tl4840248435%_)))
                                       (let ((_%hd4840448442%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4840348438%_)))
                                             (_%tl4840548445%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4840348438%_))))
                                         (if (gx#stx-null? _%tl4840548445%_)
                                             ((lambda (_%g4839548448%_
                                                       _%g4839648450%_)
                                                (if (gx#identifier?
                                                     _%g4839548448%_)
                                                    (let* ((_%pre48466%_
                                                            (gx#stx-e
                                                             _%g4839548448%_))
                                                           (_%exports48469%_
                                                            (gx#core-expand-export-source
                                                             _%g4839648450%_))
                                                           (_%rename-e48475%_
                                                            (lambda (_%name48472%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name48472%_
                                                               _%pre48466%_)))
                                                           (_%fold-e48491%_
                                                            (letrec ((_%fold-e48478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%out48481%_ _%r48483%_)
                                (if (gx#module-export? _%out48481%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                           _%out48481%_
                                           (_%rename-e48475%_
                                            (gx#module-export-name
                                             _%out48481%_)))
                                          _%r48483%_)
                                    (if (gx#export-set? _%out48481%_)
                                        (foldl _%fold-e48478%_
                                               _%r48483%_
                                               (gx#export-set-exports
                                                _%out48481%_))
                                        (cons _%out48481%_ _%r48483%_))))))
                      _%fold-e48478%_)))
              (cons 'begin: (foldl _%fold-e48491%_ '() _%exports48469%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4839348411%_
                                                     _%g4839448415%_)))
                                              _%hd4840448442%_
                                              _%hd4840148432%_)
                                             (_%g4839348411%_
                                              _%g4839448415%_))))
                                     (_%g4839348411%_ _%g4839448415%_))))
                             (_%g4839348411%_ _%g4839448415%_))))
                     (_%g4839348411%_ _%g4839448415%_)))))
         (_%g4839248496%_ _%stx48390%_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_%stx48500%_)
       (letrec ((_%identifiers48503%_
                 (lambda (_%id48731%_ _%unchecked?48733%_)
                   (let ((_%info48735%_
                          (gx#syntax-local-value _%id48731%_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%info48735%_))
                         (cons _%id48731%_
                               (cons (let ((__obj49032 _%info48735%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj49032
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj49032
                                              '3
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj49032
                                            'type-descriptor)))
                                     (foldr cons
                                            (cons (let ((__obj49033
                                                         _%info48735%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj49033
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj49033
                                                           '14
                                                           '#f
                                                           '#f))
                                                        (unchecked-slot-ref
                                                         __obj49033
                                                         'predicate)))
                                                  (foldr cons
                                                         (foldr cons
                                                                (if _%unchecked?48733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons
                                   (map cdr
                                        (let ((__obj49034 _%info48735%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj49034
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj49034
                                                 '18
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj49034
                                               'unchecked-mutators))))
                                   (map cdr
                                        (let ((__obj49035 _%info48735%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj49035
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj49035
                                                 '17
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj49035
                                               'unchecked-accessors)))))
                            '())
                        (map cdr
                             (let ((__obj49036 _%info48735%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj49036
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj49036
                                      '16
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj49036
                                    'mutators)))))
                 (map cdr
                      (let ((__obj49037 _%info48735%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj49037
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj49037
                               '15
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj49037 'accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_%ctor48738%_
                                                   (let ((__obj49038
                                                          _%info48735%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj49038
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj49038
                                                            '13
                                                            '#f
                                                            '#f))
                                                         (unchecked-slot-ref
                                                          __obj49038
                                                          'constructor)))))
                                              (if _%ctor48738%_
                                                  (cons _%ctor48738%_ '())
                                                  '())))))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _%stx48500%_
                          _%id48731%_))))))
         (let* ((_%__stx4897348974%_ _%stx48500%_)
                (_%g4850748548%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%__stx4897348974%_))))
           (let ((_%__kont4897648977%_
                  (lambda (_%g4850948692%_ _%g4851048694%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4871348715%_)
                              (_%identifiers48503%_
                               _%g4871348715%_
                               (gx#stx-e _%g4851048694%_)))
                            (foldr (lambda (_%g4871848721%_ _%g4871948724%_)
                                     (cons _%g4871848721%_ _%g4871948724%_))
                                   '()
                                   _%g4850948692%_))))))
                 (_%__kont4898048981%_
                  (lambda (_%g4853048593%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4860948611%_)
                              (_%identifiers48503%_ _%g4860948611%_ '#f))
                            (foldr (lambda (_%g4861448617%_ _%g4861548620%_)
                                     (cons _%g4861448617%_ _%g4861548620%_))
                                   '()
                                   _%g4853048593%_)))))))
             (let* ((_%__match4903049031%_
                     (lambda (_%e4853148555%_
                              _%hd4853248559%_
                              _%tl4853348562%_
                              _%__splice4898248983%_
                              _%target4853448565%_
                              _%tl4853648568%_)
                       (letrec ((_%loop4853748571%_
                                 (lambda (_%hd4853548575%_ _%id4854148578%_)
                                   (if (gx#stx-pair? _%hd4853548575%_)
                                       (let ((_%e4853848580%_
                                              (gx#syntax-e _%hd4853548575%_)))
                                         (let ((_%lp-tl4854048587%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4853848580%_)))
                                               (_%lp-hd4853948584%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4853848580%_))))
                                           (_%loop4853748571%_
                                            _%lp-tl4854048587%_
                                            (cons _%lp-hd4853948584%_
                                                  _%id4854148578%_))))
                                       (let ((_%id4854248590%_
                                              (reverse _%id4854148578%_)))
                                         (_%__kont4898048981%_
                                          _%id4854248590%_))))))
                         (_%loop4853748571%_ _%target4853448565%_ '()))))
                    (_%__match4901649017%_
                     (lambda (_%e4851148630%_
                              _%hd4851248634%_
                              _%tl4851348637%_
                              _%e4851448640%_
                              _%hd4851548644%_
                              _%tl4851648647%_
                              _%e4851748650%_
                              _%e4851848654%_
                              _%hd4851948658%_
                              _%tl4852048661%_
                              _%__splice4897848979%_
                              _%target4852148664%_
                              _%tl4852348667%_)
                       (letrec ((_%loop4852448670%_
                                 (lambda (_%hd4852248674%_ _%id4852848677%_)
                                   (if (gx#stx-pair? _%hd4852248674%_)
                                       (let ((_%e4852548679%_
                                              (gx#syntax-e _%hd4852248674%_)))
                                         (let ((_%lp-tl4852748686%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4852548679%_)))
                                               (_%lp-hd4852648683%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4852548679%_))))
                                           (_%loop4852448670%_
                                            _%lp-tl4852748686%_
                                            (cons _%lp-hd4852648683%_
                                                  _%id4852848677%_))))
                                       (let ((_%id4852948689%_
                                              (reverse _%id4852848677%_)))
                                         (_%__kont4897648977%_
                                          _%id4852948689%_
                                          _%hd4851948658%_))))))
                         (_%loop4852448670%_ _%target4852148664%_ '())))))
               (if (gx#stx-pair? _%__stx4897348974%_)
                   (let ((_%e4851148630%_ (gx#syntax-e _%__stx4897348974%_)))
                     (let ((_%tl4851348637%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4851148630%_)))
                           (_%hd4851248634%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4851148630%_))))
                       (if (gx#stx-pair? _%tl4851348637%_)
                           (let ((_%e4851448640%_
                                  (gx#syntax-e _%tl4851348637%_)))
                             (let ((_%tl4851648647%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4851448640%_)))
                                   (_%hd4851548644%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4851448640%_))))
                               (if (gx#stx-datum? _%hd4851548644%_)
                                   (let ((_%e4851748650%_
                                          (gx#stx-e _%hd4851548644%_)))
                                     (if (equal? _%e4851748650%_ 'unchecked:)
                                         (if (gx#stx-pair? _%tl4851648647%_)
                                             (let ((_%e4851848654%_
                                                    (gx#syntax-e
                                                     _%tl4851648647%_)))
                                               (let ((_%tl4852048661%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4851848654%_)))
                                                     (_%hd4851948658%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4851848654%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%tl4852048661%_)
                                                     (let ((_%__splice4897848979%_
                                                            (gx#syntax-split-splice->vector
                                                             _%tl4852048661%_
                                                             '0)))
                                                       (let ((_%tl4852348667%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4897848979%_ '1)))
                     (_%target4852148664%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4897848979%_ '0))))
                 (if (gx#stx-null? _%tl4852348667%_)
                     (_%__match4901649017%_
                      _%e4851148630%_
                      _%hd4851248634%_
                      _%tl4851348637%_
                      _%e4851448640%_
                      _%hd4851548644%_
                      _%tl4851648647%_
                      _%e4851748650%_
                      _%e4851848654%_
                      _%hd4851948658%_
                      _%tl4852048661%_
                      _%__splice4897848979%_
                      _%target4852148664%_
                      _%tl4852348667%_)
                     (if (gx#stx-pair/null? _%tl4851348637%_)
                         (let ((_%__splice4898248983%_
                                (gx#syntax-split-splice->vector
                                 _%tl4851348637%_
                                 '0)))
                           (let ((_%tl4853648568%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4898248983%_ '1)))
                                 (_%target4853448565%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4898248983%_ '0))))
                             (if (gx#stx-null? _%tl4853648568%_)
                                 (_%__match4903049031%_
                                  _%e4851148630%_
                                  _%hd4851248634%_
                                  _%tl4851348637%_
                                  _%__splice4898248983%_
                                  _%target4853448565%_
                                  _%tl4853648568%_)
                                 (let ()
                                   (declare (not safe))
                                   (_%g4850748548%_)))))
                         (let () (declare (not safe)) (_%g4850748548%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _%tl4851348637%_)
                                                         (let ((_%__splice4898248983%_
                                                                (gx#syntax-split-splice->vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl4851348637%_
                         '0)))
                   (let ((_%tl4853648568%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4898248983%_ '1)))
                         (_%target4853448565%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4898248983%_ '0))))
                     (if (gx#stx-null? _%tl4853648568%_)
                         (_%__match4903049031%_
                          _%e4851148630%_
                          _%hd4851248634%_
                          _%tl4851348637%_
                          _%__splice4898248983%_
                          _%target4853448565%_
                          _%tl4853648568%_)
                         (let () (declare (not safe)) (_%g4850748548%_)))))
                 (let () (declare (not safe)) (_%g4850748548%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _%tl4851348637%_)
                                                 (let ((_%__splice4898248983%_
                                                        (gx#syntax-split-splice->vector
                                                         _%tl4851348637%_
                                                         '0)))
                                                   (let ((_%tl4853648568%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4898248983%_
                                                             '1)))
                                                         (_%target4853448565%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4898248983%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4853648568%_)
                                                         (_%__match4903049031%_
                                                          _%e4851148630%_
                                                          _%hd4851248634%_
                                                          _%tl4851348637%_
                                                          _%__splice4898248983%_
                                                          _%target4853448565%_
                                                          _%tl4853648568%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4850748548%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4850748548%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4851348637%_)
                                             (let ((_%__splice4898248983%_
                                                    (gx#syntax-split-splice->vector
                                                     _%tl4851348637%_
                                                     '0)))
                                               (let ((_%tl4853648568%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4898248983%_
                                                         '1)))
                                                     (_%target4853448565%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4898248983%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4853648568%_)
                                                     (_%__match4903049031%_
                                                      _%e4851148630%_
                                                      _%hd4851248634%_
                                                      _%tl4851348637%_
                                                      _%__splice4898248983%_
                                                      _%target4853448565%_
                                                      _%tl4853648568%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4850748548%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4850748548%_)))))
                                   (if (gx#stx-pair/null? _%tl4851348637%_)
                                       (let ((_%__splice4898248983%_
                                              (gx#syntax-split-splice->vector
                                               _%tl4851348637%_
                                               '0)))
                                         (let ((_%tl4853648568%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4898248983%_
                                                   '1)))
                                               (_%target4853448565%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4898248983%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4853648568%_)
                                               (_%__match4903049031%_
                                                _%e4851148630%_
                                                _%hd4851248634%_
                                                _%tl4851348637%_
                                                _%__splice4898248983%_
                                                _%target4853448565%_
                                                _%tl4853648568%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4850748548%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4850748548%_))))))
                           (if (gx#stx-pair/null? _%tl4851348637%_)
                               (let ((_%__splice4898248983%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4851348637%_
                                       '0)))
                                 (let ((_%tl4853648568%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4898248983%_
                                           '1)))
                                       (_%target4853448565%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4898248983%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4853648568%_)
                                       (_%__match4903049031%_
                                        _%e4851148630%_
                                        _%hd4851248634%_
                                        _%tl4851348637%_
                                        _%__splice4898248983%_
                                        _%target4853448565%_
                                        _%tl4853648568%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4850748548%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4850748548%_))))))
                   (let () (declare (not safe)) (_%g4850748548%_)))))))))))
