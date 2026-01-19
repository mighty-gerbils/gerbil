(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_%$stx45234%_)
      (let* ((_%__stx4788847889%_ _%$stx45234%_)
             (_%g4523945258%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4788847889%_))))
        (let ((_%__kont4789147892%_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (_%__kont4789347894%_
               (lambda (_%L45285%_ _%L45287%_ _%L45288%_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _%L45287%_
                                   (cons (cons _%L45288%_ _%L45285%_) '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _%L45287%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? _%__stx4788847889%_)
              (let ((_%e4524145310%_ (gx#syntax-e _%__stx4788847889%_)))
                (let ((_%tl4524345317%_
                       (let () (declare (not safe)) (##cdr _%e4524145310%_)))
                      (_%hd4524245314%_
                       (let () (declare (not safe)) (##car _%e4524145310%_))))
                  (if (gx#stx-null? _%tl4524345317%_)
                      (_%__kont4789147892%_)
                      (if (gx#stx-pair? _%tl4524345317%_)
                          (let ((_%e4525045275%_
                                 (gx#syntax-e _%tl4524345317%_)))
                            (let ((_%tl4525245282%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4525045275%_)))
                                  (_%hd4525145279%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4525045275%_))))
                              (_%__kont4789347894%_
                               _%tl4525245282%_
                               _%hd4525145279%_
                               _%hd4524245314%_)))
                          (let () (declare (not safe)) (_%g4523945258%_))))))
              (let () (declare (not safe)) (_%g4523945258%_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_%$stx45328%_)
      (let* ((_%__stx4791847919%_ _%$stx45328%_)
             (_%g4533345373%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4791847919%_))))
        (let ((_%__kont4792147922%_
               (lambda (_%L45511%_ _%L45513%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L45513%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _%L45511%_ '()))
                                   '())))))
              (_%__kont4792347924%_
               (lambda (_%L45440%_ _%L45442%_ _%L45443%_ _%L45444%_)
                 (cons _%L45444%_
                       (cons _%L45443%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L45442%_
                                               (foldr (lambda (_%g4546545468%_
                                                               _%g4546645471%_)
                                                        (cons _%g4546545468%_
                                                              _%g4546645471%_))
                                                      '()
                                                      _%L45440%_)))
                                   '()))))))
          (let* ((_%__match4797347974%_
                  (lambda (_%e4535045380%_
                           _%hd4535145384%_
                           _%tl4535245387%_
                           _%e4535345390%_
                           _%hd4535445394%_
                           _%tl4535545397%_
                           _%e4535645400%_
                           _%hd4535745404%_
                           _%tl4535845407%_
                           _%__splice4792547926%_
                           _%target4535945410%_
                           _%tl4536145413%_)
                    (letrec ((_%loop4536245416%_
                              (lambda (_%hd4536045420%_ _%body4536645423%_)
                                (if (gx#stx-pair? _%hd4536045420%_)
                                    (let ((_%e4536345426%_
                                           (gx#syntax-e _%hd4536045420%_)))
                                      (let ((_%lp-tl4536545433%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4536345426%_)))
                                            (_%lp-hd4536445430%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4536345426%_))))
                                        (_%loop4536245416%_
                                         _%lp-tl4536545433%_
                                         (cons _%lp-hd4536445430%_
                                               _%body4536645423%_))))
                                    (let ((_%body4536745436%_
                                           (reverse _%body4536645423%_)))
                                      (let ((_%L45440%_ _%body4536745436%_)
                                            (_%L45442%_ _%tl4535845407%_)
                                            (_%L45443%_ _%hd4535745404%_)
                                            (_%L45444%_ _%hd4535145384%_))
                                        (if (gx#identifier? _%L45443%_)
                                            (_%__kont4792347924%_
                                             _%L45440%_
                                             _%L45442%_
                                             _%L45443%_
                                             _%L45444%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4533345373%_)))))))))
                      (_%loop4536245416%_ _%target4535945410%_ '()))))
                 (_%__match4794747948%_
                  (lambda (_%e4533745481%_
                           _%hd4533845485%_
                           _%tl4533945488%_
                           _%e4534045491%_
                           _%hd4534145495%_
                           _%tl4534245498%_
                           _%e4534345501%_
                           _%hd4534445505%_
                           _%tl4534545508%_)
                    (let ((_%L45511%_ _%hd4534445505%_)
                          (_%L45513%_ _%hd4534145495%_))
                      (if (gx#identifier? _%L45513%_)
                          (_%__kont4792147922%_ _%L45511%_ _%L45513%_)
                          (if (gx#stx-pair? _%hd4534145495%_)
                              (let ((_%e4535645400%_
                                     (gx#syntax-e _%hd4534145495%_)))
                                (let ((_%tl4535845407%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4535645400%_)))
                                      (_%hd4535745404%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4535645400%_))))
                                  (if (gx#stx-pair/null? _%tl4534245498%_)
                                      (let ((_%__splice4792547926%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4534245498%_
                                              '0)))
                                        (let ((_%tl4536145413%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4792547926%_
                                                  '1)))
                                              (_%target4535945410%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4792547926%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4536145413%_)
                                              (_%__match4797347974%_
                                               _%e4533745481%_
                                               _%hd4533845485%_
                                               _%tl4533945488%_
                                               _%e4534045491%_
                                               _%hd4534145495%_
                                               _%tl4534245498%_
                                               _%e4535645400%_
                                               _%hd4535745404%_
                                               _%tl4535845407%_
                                               _%__splice4792547926%_
                                               _%target4535945410%_
                                               _%tl4536145413%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4533345373%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4533345373%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4533345373%_))))))))
            (if (gx#stx-pair? _%__stx4791847919%_)
                (let ((_%e4533745481%_ (gx#syntax-e _%__stx4791847919%_)))
                  (let ((_%tl4533945488%_
                         (let () (declare (not safe)) (##cdr _%e4533745481%_)))
                        (_%hd4533845485%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4533745481%_))))
                    (if (gx#stx-pair? _%tl4533945488%_)
                        (let ((_%e4534045491%_ (gx#syntax-e _%tl4533945488%_)))
                          (let ((_%tl4534245498%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4534045491%_)))
                                (_%hd4534145495%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4534045491%_))))
                            (if (gx#stx-pair? _%tl4534245498%_)
                                (let ((_%e4534345501%_
                                       (gx#syntax-e _%tl4534245498%_)))
                                  (let ((_%tl4534545508%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4534345501%_)))
                                        (_%hd4534445505%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4534345501%_))))
                                    (if (gx#stx-null? _%tl4534545508%_)
                                        (_%__match4794747948%_
                                         _%e4533745481%_
                                         _%hd4533845485%_
                                         _%tl4533945488%_
                                         _%e4534045491%_
                                         _%hd4534145495%_
                                         _%tl4534245498%_
                                         _%e4534345501%_
                                         _%hd4534445505%_
                                         _%tl4534545508%_)
                                        (if (gx#stx-pair? _%hd4534145495%_)
                                            (let ((_%e4535645400%_
                                                   (gx#syntax-e
                                                    _%hd4534145495%_)))
                                              (let ((_%tl4535845407%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4535645400%_)))
                                                    (_%hd4535745404%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4535645400%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4534245498%_)
                                                    (let ((_%__splice4792547926%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4534245498%_
                                                            '0)))
                                                      (let ((_%tl4536145413%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4792547926%_ '1)))
                    (_%target4535945410%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4792547926%_ '0))))
                (if (gx#stx-null? _%tl4536145413%_)
                    (_%__match4797347974%_
                     _%e4533745481%_
                     _%hd4533845485%_
                     _%tl4533945488%_
                     _%e4534045491%_
                     _%hd4534145495%_
                     _%tl4534245498%_
                     _%e4535645400%_
                     _%hd4535745404%_
                     _%tl4535845407%_
                     _%__splice4792547926%_
                     _%target4535945410%_
                     _%tl4536145413%_)
                    (let () (declare (not safe)) (_%g4533345373%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4533345373%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4533345373%_))))))
                                (if (gx#stx-pair? _%hd4534145495%_)
                                    (let ((_%e4535645400%_
                                           (gx#syntax-e _%hd4534145495%_)))
                                      (let ((_%tl4535845407%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4535645400%_)))
                                            (_%hd4535745404%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4535645400%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4534245498%_)
                                            (let ((_%__splice4792547926%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4534245498%_
                                                    '0)))
                                              (let ((_%tl4536145413%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4792547926%_
                                                        '1)))
                                                    (_%target4535945410%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4792547926%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4536145413%_)
                                                    (_%__match4797347974%_
                                                     _%e4533745481%_
                                                     _%hd4533845485%_
                                                     _%tl4533945488%_
                                                     _%e4534045491%_
                                                     _%hd4534145495%_
                                                     _%tl4534245498%_
                                                     _%e4535645400%_
                                                     _%hd4535745404%_
                                                     _%tl4535845407%_
                                                     _%__splice4792547926%_
                                                     _%target4535945410%_
                                                     _%tl4536145413%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4533345373%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4533345373%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4533345373%_))))))
                        (let () (declare (not safe)) (_%g4533345373%_)))))
                (let () (declare (not safe)) (_%g4533345373%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_%$stx45533%_)
      (let* ((_%__stx4797647977%_ _%$stx45533%_)
             (_%g4553845578%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4797647977%_))))
        (let ((_%__kont4797947980%_
               (lambda (_%L45716%_ _%L45718%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L45718%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _%L45716%_ '()))
                                   '())))))
              (_%__kont4798147982%_
               (lambda (_%L45645%_ _%L45647%_ _%L45648%_ _%L45649%_)
                 (cons _%L45649%_
                       (cons _%L45648%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L45647%_
                                               (foldr (lambda (_%g4567045673%_
                                                               _%g4567145676%_)
                                                        (cons _%g4567045673%_
                                                              _%g4567145676%_))
                                                      '()
                                                      _%L45645%_)))
                                   '()))))))
          (let* ((_%__match4803148032%_
                  (lambda (_%e4555545585%_
                           _%hd4555645589%_
                           _%tl4555745592%_
                           _%e4555845595%_
                           _%hd4555945599%_
                           _%tl4556045602%_
                           _%e4556145605%_
                           _%hd4556245609%_
                           _%tl4556345612%_
                           _%__splice4798347984%_
                           _%target4556445615%_
                           _%tl4556645618%_)
                    (letrec ((_%loop4556745621%_
                              (lambda (_%hd4556545625%_ _%body4557145628%_)
                                (if (gx#stx-pair? _%hd4556545625%_)
                                    (let ((_%e4556845631%_
                                           (gx#syntax-e _%hd4556545625%_)))
                                      (let ((_%lp-tl4557045638%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4556845631%_)))
                                            (_%lp-hd4556945635%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4556845631%_))))
                                        (_%loop4556745621%_
                                         _%lp-tl4557045638%_
                                         (cons _%lp-hd4556945635%_
                                               _%body4557145628%_))))
                                    (let ((_%body4557245641%_
                                           (reverse _%body4557145628%_)))
                                      (let ((_%L45645%_ _%body4557245641%_)
                                            (_%L45647%_ _%tl4556345612%_)
                                            (_%L45648%_ _%hd4556245609%_)
                                            (_%L45649%_ _%hd4555645589%_))
                                        (if (gx#identifier? _%L45648%_)
                                            (_%__kont4798147982%_
                                             _%L45645%_
                                             _%L45647%_
                                             _%L45648%_
                                             _%L45649%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4553845578%_)))))))))
                      (_%loop4556745621%_ _%target4556445615%_ '()))))
                 (_%__match4800548006%_
                  (lambda (_%e4554245686%_
                           _%hd4554345690%_
                           _%tl4554445693%_
                           _%e4554545696%_
                           _%hd4554645700%_
                           _%tl4554745703%_
                           _%e4554845706%_
                           _%hd4554945710%_
                           _%tl4555045713%_)
                    (let ((_%L45716%_ _%hd4554945710%_)
                          (_%L45718%_ _%hd4554645700%_))
                      (if (gx#identifier? _%L45718%_)
                          (_%__kont4797947980%_ _%L45716%_ _%L45718%_)
                          (if (gx#stx-pair? _%hd4554645700%_)
                              (let ((_%e4556145605%_
                                     (gx#syntax-e _%hd4554645700%_)))
                                (let ((_%tl4556345612%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4556145605%_)))
                                      (_%hd4556245609%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4556145605%_))))
                                  (if (gx#stx-pair/null? _%tl4554745703%_)
                                      (let ((_%__splice4798347984%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4554745703%_
                                              '0)))
                                        (let ((_%tl4556645618%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4798347984%_
                                                  '1)))
                                              (_%target4556445615%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4798347984%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4556645618%_)
                                              (_%__match4803148032%_
                                               _%e4554245686%_
                                               _%hd4554345690%_
                                               _%tl4554445693%_
                                               _%e4554545696%_
                                               _%hd4554645700%_
                                               _%tl4554745703%_
                                               _%e4556145605%_
                                               _%hd4556245609%_
                                               _%tl4556345612%_
                                               _%__splice4798347984%_
                                               _%target4556445615%_
                                               _%tl4556645618%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4553845578%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4553845578%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4553845578%_))))))))
            (if (gx#stx-pair? _%__stx4797647977%_)
                (let ((_%e4554245686%_ (gx#syntax-e _%__stx4797647977%_)))
                  (let ((_%tl4554445693%_
                         (let () (declare (not safe)) (##cdr _%e4554245686%_)))
                        (_%hd4554345690%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4554245686%_))))
                    (if (gx#stx-pair? _%tl4554445693%_)
                        (let ((_%e4554545696%_ (gx#syntax-e _%tl4554445693%_)))
                          (let ((_%tl4554745703%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4554545696%_)))
                                (_%hd4554645700%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4554545696%_))))
                            (if (gx#stx-pair? _%tl4554745703%_)
                                (let ((_%e4554845706%_
                                       (gx#syntax-e _%tl4554745703%_)))
                                  (let ((_%tl4555045713%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4554845706%_)))
                                        (_%hd4554945710%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4554845706%_))))
                                    (if (gx#stx-null? _%tl4555045713%_)
                                        (_%__match4800548006%_
                                         _%e4554245686%_
                                         _%hd4554345690%_
                                         _%tl4554445693%_
                                         _%e4554545696%_
                                         _%hd4554645700%_
                                         _%tl4554745703%_
                                         _%e4554845706%_
                                         _%hd4554945710%_
                                         _%tl4555045713%_)
                                        (if (gx#stx-pair? _%hd4554645700%_)
                                            (let ((_%e4556145605%_
                                                   (gx#syntax-e
                                                    _%hd4554645700%_)))
                                              (let ((_%tl4556345612%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4556145605%_)))
                                                    (_%hd4556245609%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4556145605%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4554745703%_)
                                                    (let ((_%__splice4798347984%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4554745703%_
                                                            '0)))
                                                      (let ((_%tl4556645618%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4798347984%_ '1)))
                    (_%target4556445615%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4798347984%_ '0))))
                (if (gx#stx-null? _%tl4556645618%_)
                    (_%__match4803148032%_
                     _%e4554245686%_
                     _%hd4554345690%_
                     _%tl4554445693%_
                     _%e4554545696%_
                     _%hd4554645700%_
                     _%tl4554745703%_
                     _%e4556145605%_
                     _%hd4556245609%_
                     _%tl4556345612%_
                     _%__splice4798347984%_
                     _%target4556445615%_
                     _%tl4556645618%_)
                    (let () (declare (not safe)) (_%g4553845578%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4553845578%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4553845578%_))))))
                                (if (gx#stx-pair? _%hd4554645700%_)
                                    (let ((_%e4556145605%_
                                           (gx#syntax-e _%hd4554645700%_)))
                                      (let ((_%tl4556345612%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4556145605%_)))
                                            (_%hd4556245609%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4556145605%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4554745703%_)
                                            (let ((_%__splice4798347984%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4554745703%_
                                                    '0)))
                                              (let ((_%tl4556645618%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4798347984%_
                                                        '1)))
                                                    (_%target4556445615%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4798347984%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4556645618%_)
                                                    (_%__match4803148032%_
                                                     _%e4554245686%_
                                                     _%hd4554345690%_
                                                     _%tl4554445693%_
                                                     _%e4554545696%_
                                                     _%hd4554645700%_
                                                     _%tl4554745703%_
                                                     _%e4556145605%_
                                                     _%hd4556245609%_
                                                     _%tl4556345612%_
                                                     _%__splice4798347984%_
                                                     _%target4556445615%_
                                                     _%tl4556645618%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4553845578%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4553845578%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4553845578%_))))))
                        (let () (declare (not safe)) (_%g4553845578%_)))))
                (let () (declare (not safe)) (_%g4553845578%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_%$stx45738%_)
      (let* ((_%__stx4803448035%_ _%$stx45738%_)
             (_%g4574345783%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4803448035%_))))
        (let ((_%__kont4803748038%_
               (lambda (_%L45921%_ _%L45923%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L45923%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _%L45921%_ '()))
                                   '())))))
              (_%__kont4803948040%_
               (lambda (_%L45850%_ _%L45852%_ _%L45853%_ _%L45854%_)
                 (cons _%L45854%_
                       (cons _%L45853%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L45852%_
                                               (foldr (lambda (_%g4587545878%_
                                                               _%g4587645881%_)
                                                        (cons _%g4587545878%_
                                                              _%g4587645881%_))
                                                      '()
                                                      _%L45850%_)))
                                   '()))))))
          (let* ((_%__match4808948090%_
                  (lambda (_%e4576045790%_
                           _%hd4576145794%_
                           _%tl4576245797%_
                           _%e4576345800%_
                           _%hd4576445804%_
                           _%tl4576545807%_
                           _%e4576645810%_
                           _%hd4576745814%_
                           _%tl4576845817%_
                           _%__splice4804148042%_
                           _%target4576945820%_
                           _%tl4577145823%_)
                    (letrec ((_%loop4577245826%_
                              (lambda (_%hd4577045830%_ _%body4577645833%_)
                                (if (gx#stx-pair? _%hd4577045830%_)
                                    (let ((_%e4577345836%_
                                           (gx#syntax-e _%hd4577045830%_)))
                                      (let ((_%lp-tl4577545843%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4577345836%_)))
                                            (_%lp-hd4577445840%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4577345836%_))))
                                        (_%loop4577245826%_
                                         _%lp-tl4577545843%_
                                         (cons _%lp-hd4577445840%_
                                               _%body4577645833%_))))
                                    (let ((_%body4577745846%_
                                           (reverse _%body4577645833%_)))
                                      (let ((_%L45850%_ _%body4577745846%_)
                                            (_%L45852%_ _%tl4576845817%_)
                                            (_%L45853%_ _%hd4576745814%_)
                                            (_%L45854%_ _%hd4576145794%_))
                                        (if (gx#identifier? _%L45853%_)
                                            (_%__kont4803948040%_
                                             _%L45850%_
                                             _%L45852%_
                                             _%L45853%_
                                             _%L45854%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4574345783%_)))))))))
                      (_%loop4577245826%_ _%target4576945820%_ '()))))
                 (_%__match4806348064%_
                  (lambda (_%e4574745891%_
                           _%hd4574845895%_
                           _%tl4574945898%_
                           _%e4575045901%_
                           _%hd4575145905%_
                           _%tl4575245908%_
                           _%e4575345911%_
                           _%hd4575445915%_
                           _%tl4575545918%_)
                    (let ((_%L45921%_ _%hd4575445915%_)
                          (_%L45923%_ _%hd4575145905%_))
                      (if (gx#identifier? _%L45923%_)
                          (_%__kont4803748038%_ _%L45921%_ _%L45923%_)
                          (if (gx#stx-pair? _%hd4575145905%_)
                              (let ((_%e4576645810%_
                                     (gx#syntax-e _%hd4575145905%_)))
                                (let ((_%tl4576845817%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4576645810%_)))
                                      (_%hd4576745814%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4576645810%_))))
                                  (if (gx#stx-pair/null? _%tl4575245908%_)
                                      (let ((_%__splice4804148042%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4575245908%_
                                              '0)))
                                        (let ((_%tl4577145823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4804148042%_
                                                  '1)))
                                              (_%target4576945820%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4804148042%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4577145823%_)
                                              (_%__match4808948090%_
                                               _%e4574745891%_
                                               _%hd4574845895%_
                                               _%tl4574945898%_
                                               _%e4575045901%_
                                               _%hd4575145905%_
                                               _%tl4575245908%_
                                               _%e4576645810%_
                                               _%hd4576745814%_
                                               _%tl4576845817%_
                                               _%__splice4804148042%_
                                               _%target4576945820%_
                                               _%tl4577145823%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4574345783%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4574345783%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4574345783%_))))))))
            (if (gx#stx-pair? _%__stx4803448035%_)
                (let ((_%e4574745891%_ (gx#syntax-e _%__stx4803448035%_)))
                  (let ((_%tl4574945898%_
                         (let () (declare (not safe)) (##cdr _%e4574745891%_)))
                        (_%hd4574845895%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4574745891%_))))
                    (if (gx#stx-pair? _%tl4574945898%_)
                        (let ((_%e4575045901%_ (gx#syntax-e _%tl4574945898%_)))
                          (let ((_%tl4575245908%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4575045901%_)))
                                (_%hd4575145905%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4575045901%_))))
                            (if (gx#stx-pair? _%tl4575245908%_)
                                (let ((_%e4575345911%_
                                       (gx#syntax-e _%tl4575245908%_)))
                                  (let ((_%tl4575545918%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4575345911%_)))
                                        (_%hd4575445915%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4575345911%_))))
                                    (if (gx#stx-null? _%tl4575545918%_)
                                        (_%__match4806348064%_
                                         _%e4574745891%_
                                         _%hd4574845895%_
                                         _%tl4574945898%_
                                         _%e4575045901%_
                                         _%hd4575145905%_
                                         _%tl4575245908%_
                                         _%e4575345911%_
                                         _%hd4575445915%_
                                         _%tl4575545918%_)
                                        (if (gx#stx-pair? _%hd4575145905%_)
                                            (let ((_%e4576645810%_
                                                   (gx#syntax-e
                                                    _%hd4575145905%_)))
                                              (let ((_%tl4576845817%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4576645810%_)))
                                                    (_%hd4576745814%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4576645810%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4575245908%_)
                                                    (let ((_%__splice4804148042%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4575245908%_
                                                            '0)))
                                                      (let ((_%tl4577145823%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4804148042%_ '1)))
                    (_%target4576945820%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4804148042%_ '0))))
                (if (gx#stx-null? _%tl4577145823%_)
                    (_%__match4808948090%_
                     _%e4574745891%_
                     _%hd4574845895%_
                     _%tl4574945898%_
                     _%e4575045901%_
                     _%hd4575145905%_
                     _%tl4575245908%_
                     _%e4576645810%_
                     _%hd4576745814%_
                     _%tl4576845817%_
                     _%__splice4804148042%_
                     _%target4576945820%_
                     _%tl4577145823%_)
                    (let () (declare (not safe)) (_%g4574345783%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4574345783%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4574345783%_))))))
                                (if (gx#stx-pair? _%hd4575145905%_)
                                    (let ((_%e4576645810%_
                                           (gx#syntax-e _%hd4575145905%_)))
                                      (let ((_%tl4576845817%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4576645810%_)))
                                            (_%hd4576745814%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4576645810%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4575245908%_)
                                            (let ((_%__splice4804148042%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4575245908%_
                                                    '0)))
                                              (let ((_%tl4577145823%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4804148042%_
                                                        '1)))
                                                    (_%target4576945820%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4804148042%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4577145823%_)
                                                    (_%__match4808948090%_
                                                     _%e4574745891%_
                                                     _%hd4574845895%_
                                                     _%tl4574945898%_
                                                     _%e4575045901%_
                                                     _%hd4575145905%_
                                                     _%tl4575245908%_
                                                     _%e4576645810%_
                                                     _%hd4576745814%_
                                                     _%tl4576845817%_
                                                     _%__splice4804148042%_
                                                     _%target4576945820%_
                                                     _%tl4577145823%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4574345783%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4574345783%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4574345783%_))))))
                        (let () (declare (not safe)) (_%g4574345783%_)))))
                (let () (declare (not safe)) (_%g4574345783%_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_%stx45943%_)
       (let* ((_%g4594645966%_
               (lambda (_%g4594745962%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4594745962%_)))
              (_%g4594546037%_
               (lambda (_%g4594745970%_)
                 (if (gx#stx-pair? _%g4594745970%_)
                     (let ((_%e4594945973%_ (gx#syntax-e _%g4594745970%_)))
                       (let ((_%hd4595045977%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4594945973%_)))
                             (_%tl4595145980%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4594945973%_))))
                         (if (gx#stx-pair/null? _%tl4595145980%_)
                             (let ((_g48184_
                                    (gx#syntax-split-splice
                                     _%tl4595145980%_
                                     '0)))
                               (begin
                                 (let ((_g48185_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g48184_)
                                              (##values-length _g48184_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g48185_ 2)))
                                       (error "Context expects 2 values"
                                              _g48185_)))
                                 (let ((_%target4595245983%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g48184_ 0)))
                                       (_%tl4595445986%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g48184_ 1))))
                                   (if (gx#stx-null? _%tl4595445986%_)
                                       (letrec ((_%loop4595545989%_
                                                 (lambda (_%hd4595345993%_
                                                          _%body4595945996%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4595345993%_)
                                                       (let ((_%e4595645999%_
                                                              (gx#syntax-e
                                                               _%hd4595345993%_)))
                                                         (let ((_%lp-hd4595746003%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4595645999%_)))
                       (_%lp-tl4595846006%_
                        (let () (declare (not safe)) (##cdr _%e4595645999%_))))
                   (_%loop4595545989%_
                    _%lp-tl4595846006%_
                    (cons _%lp-hd4595746003%_ _%body4595945996%_))))
               (let ((_%body4596046009%_ (reverse _%body4595945996%_)))
                 ((lambda (_%L46013%_)
                    (cons 'phi:
                          (cons '1
                                (foldr (lambda (_%g4602846031%_
                                                _%g4602946034%_)
                                         (cons _%g4602846031%_
                                               _%g4602946034%_))
                                       '()
                                       _%L46013%_))))
                  _%body4596046009%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4595545989%_
                                          _%target4595245983%_
                                          '()))
                                       (_%g4594645966%_ _%g4594745970%_)))))
                             (_%g4594645966%_ _%g4594745970%_))))
                     (_%g4594645966%_ _%g4594745970%_)))))
         (_%g4594546037%_ _%stx45943%_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_%stx46042%_)
       (let* ((_%g4604546065%_
               (lambda (_%g4604646061%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4604646061%_)))
              (_%g4604446136%_
               (lambda (_%g4604646069%_)
                 (if (gx#stx-pair? _%g4604646069%_)
                     (let ((_%e4604846072%_ (gx#syntax-e _%g4604646069%_)))
                       (let ((_%hd4604946076%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4604846072%_)))
                             (_%tl4605046079%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4604846072%_))))
                         (if (gx#stx-pair/null? _%tl4605046079%_)
                             (let ((_g48186_
                                    (gx#syntax-split-splice
                                     _%tl4605046079%_
                                     '0)))
                               (begin
                                 (let ((_g48187_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g48186_)
                                              (##values-length _g48186_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g48187_ 2)))
                                       (error "Context expects 2 values"
                                              _g48187_)))
                                 (let ((_%target4605146082%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g48186_ 0)))
                                       (_%tl4605346085%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g48186_ 1))))
                                   (if (gx#stx-null? _%tl4605346085%_)
                                       (letrec ((_%loop4605446088%_
                                                 (lambda (_%hd4605246092%_
                                                          _%body4605846095%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4605246092%_)
                                                       (let ((_%e4605546098%_
                                                              (gx#syntax-e
                                                               _%hd4605246092%_)))
                                                         (let ((_%lp-hd4605646102%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4605546098%_)))
                       (_%lp-tl4605746105%_
                        (let () (declare (not safe)) (##cdr _%e4605546098%_))))
                   (_%loop4605446088%_
                    _%lp-tl4605746105%_
                    (cons _%lp-hd4605646102%_ _%body4605846095%_))))
               (let ((_%body4605946108%_ (reverse _%body4605846095%_)))
                 ((lambda (_%L46112%_)
                    (cons 'phi:
                          (cons '-1
                                (foldr (lambda (_%g4612746130%_
                                                _%g4612846133%_)
                                         (cons _%g4612746130%_
                                               _%g4612846133%_))
                                       '()
                                       _%L46112%_))))
                  _%body4605946108%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4605446088%_
                                          _%target4605146082%_
                                          '()))
                                       (_%g4604546065%_ _%g4604646069%_)))))
                             (_%g4604546065%_ _%g4604646069%_))))
                     (_%g4604546065%_ _%g4604646069%_)))))
         (_%g4604446136%_ _%stx46042%_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_%stx46141%_)
       (let* ((_%g4614446168%_
               (lambda (_%g4614546164%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4614546164%_)))
              (_%g4614346296%_
               (lambda (_%g4614546172%_)
                 (if (gx#stx-pair? _%g4614546172%_)
                     (let ((_%e4614846175%_ (gx#syntax-e _%g4614546172%_)))
                       (let ((_%hd4614946179%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4614846175%_)))
                             (_%tl4615046182%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4614846175%_))))
                         (if (gx#stx-pair? _%tl4615046182%_)
                             (let ((_%e4615146185%_
                                    (gx#syntax-e _%tl4615046182%_)))
                               (let ((_%hd4615246189%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4615146185%_)))
                                     (_%tl4615346192%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4615146185%_))))
                                 (if (gx#stx-pair/null? _%tl4615346192%_)
                                     (let ((_g48188_
                                            (gx#syntax-split-splice
                                             _%tl4615346192%_
                                             '0)))
                                       (begin
                                         (let ((_g48189_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g48188_)
                                                      (##values-length
                                                       _g48188_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g48189_ 2)))
                                               (error "Context expects 2 values"
                                                      _g48189_)))
                                         (let ((_%target4615446195%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48188_ 0)))
                                               (_%tl4615646198%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48188_ 1))))
                                           (if (gx#stx-null? _%tl4615646198%_)
                                               (letrec ((_%loop4615746201%_
                                                         (lambda (_%hd4615546205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4616146208%_)
                   (if (gx#stx-pair? _%hd4615546205%_)
                       (let ((_%e4615846211%_ (gx#syntax-e _%hd4615546205%_)))
                         (let ((_%lp-hd4615946215%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4615846211%_)))
                               (_%lp-tl4616046218%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4615846211%_))))
                           (_%loop4615746201%_
                            _%lp-tl4616046218%_
                            (cons _%lp-hd4615946215%_ _%id4616146208%_))))
                       (let ((_%id4616246221%_ (reverse _%id4616146208%_)))
                         ((lambda (_%L46225%_ _%L46227%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4624446247%_
                                                 _%g4624546250%_)
                                          (cons _%g4624446247%_
                                                _%g4624546250%_))
                                        '()
                                        _%L46225%_))
                                (let* ((_%keys46261%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4625246255%_
                                                         _%g4625346258%_)
                                                  (cons _%g4625246255%_
                                                        _%g4625346258%_))
                                                '()
                                                _%L46225%_)))
                                       (_%keytab46272%_
                                        (let ((_%ht46264%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4626646268%_)
                                             (hash-put!
                                              _%ht46264%_
                                              _%g4626646268%_
                                              '#t))
                                           _%keys46261%_)
                                          _%ht46264%_))
                                       (_%imports46275%_
                                        (gx#core-expand-import-source
                                         _%L46227%_))
                                       (_%fold-e46291%_
                                        (letrec ((_%fold-e46278%_
                                                  (lambda (_%in46281%_
                                                           _%r46283%_)
                                                    (if (gx#module-import?
                                                         _%in46281%_)
                                                        (if (hash-get
                                                             _%keytab46272%_
                                                             (gx#module-import-name
                                                              _%in46281%_))
                                                            (cons _%in46281%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r46283%_)
                    _%r46283%_)
                (if (gx#import-set? _%in46281%_)
                    (foldl _%fold-e46278%_
                           _%r46283%_
                           (gx#import-set-imports _%in46281%_))
                    _%r46283%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e46278%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e46291%_
                                               '()
                                               _%imports46275%_)))
                                (_%g4614446168%_ _%g4614546172%_)))
                          _%id4616246221%_
                          _%hd4615246189%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4615746201%_
                                                  _%target4615446195%_
                                                  '()))
                                               (_%g4614446168%_
                                                _%g4614546172%_)))))
                                     (_%g4614446168%_ _%g4614546172%_))))
                             (_%g4614446168%_ _%g4614546172%_))))
                     (_%g4614446168%_ _%g4614546172%_)))))
         (_%g4614346296%_ _%stx46141%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_%stx46301%_)
       (let* ((_%g4630446328%_
               (lambda (_%g4630546324%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4630546324%_)))
              (_%g4630346456%_
               (lambda (_%g4630546332%_)
                 (if (gx#stx-pair? _%g4630546332%_)
                     (let ((_%e4630846335%_ (gx#syntax-e _%g4630546332%_)))
                       (let ((_%hd4630946339%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4630846335%_)))
                             (_%tl4631046342%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4630846335%_))))
                         (if (gx#stx-pair? _%tl4631046342%_)
                             (let ((_%e4631146345%_
                                    (gx#syntax-e _%tl4631046342%_)))
                               (let ((_%hd4631246349%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4631146345%_)))
                                     (_%tl4631346352%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4631146345%_))))
                                 (if (gx#stx-pair/null? _%tl4631346352%_)
                                     (let ((_g48190_
                                            (gx#syntax-split-splice
                                             _%tl4631346352%_
                                             '0)))
                                       (begin
                                         (let ((_g48191_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g48190_)
                                                      (##values-length
                                                       _g48190_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g48191_ 2)))
                                               (error "Context expects 2 values"
                                                      _g48191_)))
                                         (let ((_%target4631446355%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48190_ 0)))
                                               (_%tl4631646358%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48190_ 1))))
                                           (if (gx#stx-null? _%tl4631646358%_)
                                               (letrec ((_%loop4631746361%_
                                                         (lambda (_%hd4631546365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4632146368%_)
                   (if (gx#stx-pair? _%hd4631546365%_)
                       (let ((_%e4631846371%_ (gx#syntax-e _%hd4631546365%_)))
                         (let ((_%lp-hd4631946375%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4631846371%_)))
                               (_%lp-tl4632046378%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4631846371%_))))
                           (_%loop4631746361%_
                            _%lp-tl4632046378%_
                            (cons _%lp-hd4631946375%_ _%id4632146368%_))))
                       (let ((_%id4632246381%_ (reverse _%id4632146368%_)))
                         ((lambda (_%L46385%_ _%L46387%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4640446407%_
                                                 _%g4640546410%_)
                                          (cons _%g4640446407%_
                                                _%g4640546410%_))
                                        '()
                                        _%L46385%_))
                                (let* ((_%keys46421%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4641246415%_
                                                         _%g4641346418%_)
                                                  (cons _%g4641246415%_
                                                        _%g4641346418%_))
                                                '()
                                                _%L46385%_)))
                                       (_%keytab46432%_
                                        (let ((_%ht46424%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4642646428%_)
                                             (hash-put!
                                              _%ht46424%_
                                              _%g4642646428%_
                                              '#t))
                                           _%keys46421%_)
                                          _%ht46424%_))
                                       (_%imports46435%_
                                        (gx#core-expand-import-source
                                         _%L46387%_))
                                       (_%fold-e46451%_
                                        (letrec ((_%fold-e46438%_
                                                  (lambda (_%in46441%_
                                                           _%r46443%_)
                                                    (if (gx#module-import?
                                                         _%in46441%_)
                                                        (if (hash-get
                                                             _%keytab46432%_
                                                             (gx#module-import-name
                                                              _%in46441%_))
                                                            _%r46443%_
                                                            (cons _%in46441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r46443%_))
                (if (gx#import-set? _%in46441%_)
                    (foldl _%fold-e46438%_
                           _%r46443%_
                           (gx#import-set-imports _%in46441%_))
                    (cons _%in46441%_ _%r46443%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e46438%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e46451%_
                                               '()
                                               _%imports46435%_)))
                                (_%g4630446328%_ _%g4630546332%_)))
                          _%id4632246381%_
                          _%hd4631246349%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4631746361%_
                                                  _%target4631446355%_
                                                  '()))
                                               (_%g4630446328%_
                                                _%g4630546332%_)))))
                                     (_%g4630446328%_ _%g4630546332%_))))
                             (_%g4630446328%_ _%g4630546332%_))))
                     (_%g4630446328%_ _%g4630546332%_)))))
         (_%g4630346456%_ _%stx46301%_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_%in46508%_ _%rename46510%_)
      (gx#make-module-import
       (gx#module-import-source _%in46508%_)
       _%rename46510%_
       (gx#module-import-phi _%in46508%_)
       (gx#module-import-weak? _%in46508%_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_%name46461%_ _%pre46463%_)
      (let* ((_%name4646446472%_ _%name46461%_)
             (_%else4646646484%_
              (lambda () (make-symbol _%pre46463%_ _%name46461%_)))
             (_%K4646846492%_
              (lambda (_%mark46488%_ _%id46490%_)
                (cons (make-symbol _%pre46463%_ _%id46490%_) _%mark46488%_))))
        (if (pair? _%name4646446472%_)
            (let ((_%hd4646946496%_
                   (let () (declare (not safe)) (##car _%name4646446472%_)))
                  (_%tl4647046499%_
                   (let () (declare (not safe)) (##cdr _%name4646446472%_))))
              (let* ((_%id46502%_ _%hd4646946496%_)
                     (_%mark46505%_ _%tl4647046499%_))
                (_%K4646846492%_ _%mark46505%_ _%id46502%_)))
            (_%else4646646484%_)))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_%stx46512%_)
       (let* ((_%g4651546548%_
               (lambda (_%g4651646544%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4651646544%_)))
              (_%g4651446743%_
               (lambda (_%g4651646552%_)
                 (if (gx#stx-pair? _%g4651646552%_)
                     (let ((_%e4652046555%_ (gx#syntax-e _%g4651646552%_)))
                       (let ((_%hd4652146559%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4652046555%_)))
                             (_%tl4652246562%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4652046555%_))))
                         (if (gx#stx-pair? _%tl4652246562%_)
                             (let ((_%e4652346565%_
                                    (gx#syntax-e _%tl4652246562%_)))
                               (let ((_%hd4652446569%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4652346565%_)))
                                     (_%tl4652546572%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4652346565%_))))
                                 (if (gx#stx-pair/null? _%tl4652546572%_)
                                     (let ((_g48192_
                                            (gx#syntax-split-splice
                                             _%tl4652546572%_
                                             '0)))
                                       (begin
                                         (let ((_g48193_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g48192_)
                                                      (##values-length
                                                       _g48192_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g48193_ 2)))
                                               (error "Context expects 2 values"
                                                      _g48193_)))
                                         (let ((_%target4652646575%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48192_ 0)))
                                               (_%tl4652846578%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48192_ 1))))
                                           (if (gx#stx-null? _%tl4652846578%_)
                                               (letrec ((_%loop4652946581%_
                                                         (lambda (_%hd4652746585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4653346588%_
                          _%id4653446590%_)
                   (if (gx#stx-pair? _%hd4652746585%_)
                       (let ((_%e4653046593%_ (gx#syntax-e _%hd4652746585%_)))
                         (let ((_%lp-hd4653146597%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4653046593%_)))
                               (_%lp-tl4653246600%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4653046593%_))))
                           (if (gx#stx-pair? _%lp-hd4653146597%_)
                               (let ((_%e4653746603%_
                                      (gx#syntax-e _%lp-hd4653146597%_)))
                                 (let ((_%hd4653846607%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4653746603%_)))
                                       (_%tl4653946610%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4653746603%_))))
                                   (if (gx#stx-pair? _%tl4653946610%_)
                                       (let ((_%e4654046613%_
                                              (gx#syntax-e _%tl4653946610%_)))
                                         (let ((_%hd4654146617%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4654046613%_)))
                                               (_%tl4654246620%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4654046613%_))))
                                           (if (gx#stx-null? _%tl4654246620%_)
                                               (_%loop4652946581%_
                                                _%lp-tl4653246600%_
                                                (cons _%hd4654146617%_
                                                      _%new-id4653346588%_)
                                                (cons _%hd4653846607%_
                                                      _%id4653446590%_))
                                               (_%g4651546548%_
                                                _%g4651646552%_))))
                                       (_%g4651546548%_ _%g4651646552%_))))
                               (_%g4651546548%_ _%g4651646552%_))))
                       (let ((_%new-id4653546623%_
                              (reverse _%new-id4653346588%_))
                             (_%id4653646626%_ (reverse _%id4653446590%_)))
                         ((lambda (_%L46629%_ _%L46631%_ _%L46632%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4665046653%_
                                                      _%g4665146656%_)
                                               (cons _%g4665046653%_
                                                     _%g4665146656%_))
                                             '()
                                             _%L46631%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4665846661%_
                                                      _%g4665946664%_)
                                               (cons _%g4665846661%_
                                                     _%g4665946664%_))
                                             '()
                                             _%L46629%_)))
                                (let* ((_%keytab46667%_ (make-hash-table))
                                       (_%found46670%_ (make-hash-table))
                                       (_%_46693%_
                                        (for-each
                                         (lambda (_%id46673%_ _%new-id46675%_)
                                           (hash-put!
                                            _%keytab46667%_
                                            (gx#core-identifier-key
                                             _%id46673%_)
                                            (gx#core-identifier-key
                                             _%new-id46675%_)))
                                         (foldr (lambda (_%g4667646679%_
                                                         _%g4667746682%_)
                                                  (cons _%g4667646679%_
                                                        _%g4667746682%_))
                                                '()
                                                _%L46631%_)
                                         (foldr (lambda (_%g4668446687%_
                                                         _%g4668546690%_)
                                                  (cons _%g4668446687%_
                                                        _%g4668546690%_))
                                                '()
                                                _%L46629%_)))
                                       (_%imports46696%_
                                        (gx#core-expand-import-source
                                         _%L46632%_))
                                       (_%fold-e46724%_
                                        (letrec ((_%fold-e46699%_
                                                  (lambda (_%in46702%_
                                                           _%r46704%_)
                                                    (if (gx#module-import?
                                                         _%in46702%_)
                                                        (let* ((_%name46708%_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in46702%_))
                       (_%$e46711%_ (hash-get _%keytab46667%_ _%name46708%_)))
                  (if _%$e46711%_
                      ((lambda (_%rename46715%_)
                         (hash-put! _%found46670%_ _%name46708%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                _%in46702%_
                                _%rename46715%_)
                               _%r46704%_))
                       _%$e46711%_)
                      (cons _%in46702%_ _%r46704%_)))
                (if (gx#import-set? _%in46702%_)
                    (foldl _%fold-e46699%_
                           _%r46704%_
                           (gx#import-set-imports _%in46702%_))
                    (cons _%in46702%_ _%r46704%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e46699%_))
                                       (_%new-imports46727%_
                                        (foldl _%fold-e46724%_
                                               '()
                                               _%imports46696%_)))
                                  (for-each
                                   (lambda (_%id46732%_)
                                     (if (hash-get
                                          _%found46670%_
                                          (gx#core-identifier-key _%id46732%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _%stx46512%_
                                          _%id46732%_)))
                                   (foldr (lambda (_%g4673446737%_
                                                   _%g4673546740%_)
                                            (cons _%g4673446737%_
                                                  _%g4673546740%_))
                                          '()
                                          _%L46631%_))
                                  (cons 'begin: _%new-imports46727%_))
                                (_%g4651546548%_ _%g4651646552%_)))
                          _%new-id4653546623%_
                          _%id4653646626%_
                          _%hd4652446569%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4652946581%_
                                                  _%target4652646575%_
                                                  '()
                                                  '()))
                                               (_%g4651546548%_
                                                _%g4651646552%_)))))
                                     (_%g4651546548%_ _%g4651646552%_))))
                             (_%g4651546548%_ _%g4651646552%_))))
                     (_%g4651546548%_ _%g4651646552%_)))))
         (_%g4651446743%_ _%stx46512%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_%stx46748%_)
       (let* ((_%g4675146769%_
               (lambda (_%g4675246765%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4675246765%_)))
              (_%g4675046854%_
               (lambda (_%g4675246773%_)
                 (if (gx#stx-pair? _%g4675246773%_)
                     (let ((_%e4675546776%_ (gx#syntax-e _%g4675246773%_)))
                       (let ((_%hd4675646780%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4675546776%_)))
                             (_%tl4675746783%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4675546776%_))))
                         (if (gx#stx-pair? _%tl4675746783%_)
                             (let ((_%e4675846786%_
                                    (gx#syntax-e _%tl4675746783%_)))
                               (let ((_%hd4675946790%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4675846786%_)))
                                     (_%tl4676046793%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4675846786%_))))
                                 (if (gx#stx-pair? _%tl4676046793%_)
                                     (let ((_%e4676146796%_
                                            (gx#syntax-e _%tl4676046793%_)))
                                       (let ((_%hd4676246800%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4676146796%_)))
                                             (_%tl4676346803%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4676146796%_))))
                                         (if (gx#stx-null? _%tl4676346803%_)
                                             ((lambda (_%L46806%_ _%L46808%_)
                                                (if (gx#identifier? _%L46806%_)
                                                    (let* ((_%pre46824%_
                                                            (gx#stx-e
                                                             _%L46806%_))
                                                           (_%imports46827%_
                                                            (gx#core-expand-import-source
                                                             _%L46808%_))
                                                           (_%rename-e46833%_
                                                            (lambda (_%name46830%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name46830%_
                                                               _%pre46824%_)))
                                                           (_%fold-e46849%_
                                                            (letrec ((_%fold-e46836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%in46839%_ _%r46841%_)
                                (if (gx#module-import? _%in46839%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                           _%in46839%_
                                           (_%rename-e46833%_
                                            (gx#module-import-name
                                             _%in46839%_)))
                                          _%r46841%_)
                                    (if (gx#import-set? _%in46839%_)
                                        (foldl _%fold-e46836%_
                                               _%r46841%_
                                               (gx#import-set-imports
                                                _%in46839%_))
                                        (cons _%in46839%_ _%r46841%_))))))
                      _%fold-e46836%_)))
              (cons 'begin: (foldl _%fold-e46849%_ '() _%imports46827%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4675146769%_
                                                     _%g4675246773%_)))
                                              _%hd4676246800%_
                                              _%hd4675946790%_)
                                             (_%g4675146769%_
                                              _%g4675246773%_))))
                                     (_%g4675146769%_ _%g4675246773%_))))
                             (_%g4675146769%_ _%g4675246773%_))))
                     (_%g4675146769%_ _%g4675246773%_)))))
         (_%g4675046854%_ _%stx46748%_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_%stx46858%_)
       (letrec ((_%flatten46861%_
                 (lambda (_%list-of-lists47116%_)
                   (foldr (lambda (_%v47119%_ _%acc47121%_)
                            (if (null? _%v47119%_)
                                _%acc47121%_
                                (if (pair? _%v47119%_)
                                    (append (_%flatten46861%_ _%v47119%_)
                                            _%acc47121%_)
                                    (cons _%v47119%_ _%acc47121%_))))
                          '()
                          _%list-of-lists47116%_)))
                (_%expand-path46863%_
                 (lambda (_%top46984%_ _%mod46986%_)
                   (let* ((_%__stx4809248093%_ _%mod46986%_)
                          (_%g4698947011%_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%__stx4809248093%_))))
                     (let ((_%__kont4809548096%_
                            (lambda (_%L47079%_ _%L47081%_)
                              (map (lambda (_%mod47096%_)
                                     (gx#stx-identifier
                                      _%top46984%_
                                      _%top46984%_
                                      '"/"
                                      _%mod47096%_))
                                   (_%flatten46861%_
                                    (map (lambda (_%g4709847100%_)
                                           (_%expand-path46863%_
                                            _%L47081%_
                                            _%g4709847100%_))
                                         (foldr (lambda (_%g4710347106%_
                                                         _%g4710447109%_)
                                                  (cons _%g4710347106%_
                                                        _%g4710447109%_))
                                                '()
                                                _%L47079%_))))))
                           (_%__kont4809948100%_
                            (lambda (_%L47018%_)
                              (gx#stx-identifier
                               _%top46984%_
                               _%top46984%_
                               '"/"
                               _%L47018%_))))
                       (let* ((_%g4698847032%_
                               (lambda ()
                                 (let ((_%L47018%_ _%__stx4809248093%_))
                                   (if (or (gx#identifier? _%L47018%_)
                                           (gx#stx-fixnum? _%L47018%_))
                                       (_%__kont4809948100%_ _%L47018%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4698947011%_))))))
                              (_%__match4811548116%_
                               (lambda (_%e4699347039%_
                                        _%hd4699447043%_
                                        _%tl4699547046%_
                                        _%__splice4809748098%_
                                        _%target4699647049%_
                                        _%tl4699847052%_)
                                 (letrec ((_%loop4699947055%_
                                           (lambda (_%hd4699747059%_
                                                    _%mod4700347062%_)
                                             (if (gx#stx-pair?
                                                  _%hd4699747059%_)
                                                 (let ((_%e4700047065%_
                                                        (gx#syntax-e
                                                         _%hd4699747059%_)))
                                                   (let ((_%lp-tl4700247072%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4700047065%_)))
                                                         (_%lp-hd4700147069%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4700047065%_))))
                                                     (_%loop4699947055%_
                                                      _%lp-tl4700247072%_
                                                      (cons _%lp-hd4700147069%_
                                                            _%mod4700347062%_))))
                                                 (let ((_%mod4700447075%_
                                                        (reverse _%mod4700347062%_)))
                                                   (_%__kont4809548096%_
                                                    _%mod4700447075%_
                                                    _%hd4699447043%_))))))
                                   (_%loop4699947055%_
                                    _%target4699647049%_
                                    '())))))
                         (if (gx#stx-pair? _%__stx4809248093%_)
                             (let ((_%e4699347039%_
                                    (gx#syntax-e _%__stx4809248093%_)))
                               (let ((_%tl4699547046%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4699347039%_)))
                                     (_%hd4699447043%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4699347039%_))))
                                 (if (gx#stx-pair/null? _%tl4699547046%_)
                                     (let ((_%__splice4809748098%_
                                            (gx#syntax-split-splice->vector
                                             _%tl4699547046%_
                                             '0)))
                                       (let ((_%tl4699847052%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4809748098%_
                                                 '1)))
                                             (_%target4699647049%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4809748098%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4699847052%_)
                                             (_%__match4811548116%_
                                              _%e4699347039%_
                                              _%hd4699447043%_
                                              _%tl4699547046%_
                                              _%__splice4809748098%_
                                              _%target4699647049%_
                                              _%tl4699847052%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4698847032%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4698847032%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4698847032%_)))))))))
         (let* ((_%g4686546889%_
                 (lambda (_%g4686646885%_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%g4686646885%_)))
                (_%g4686446980%_
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
                                       (let ((_g48194_
                                              (gx#syntax-split-splice
                                               _%tl4687446913%_
                                               '0)))
                                         (begin
                                           (let ((_g48195_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g48194_)
                                                        (##values-length
                                                         _g48194_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g48195_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g48195_)))
                                           (let ((_%target4687546916%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g48194_ 0)))
                                                 (_%tl4687746919%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g48194_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl4687746919%_)
                                                 (letrec ((_%loop4687846922%_
                                                           (lambda (_%hd4687646926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%mod4688246929%_)
                     (if (gx#stx-pair? _%hd4687646926%_)
                         (let ((_%e4687946932%_
                                (gx#syntax-e _%hd4687646926%_)))
                           (let ((_%lp-hd4688046936%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4687946932%_)))
                                 (_%lp-tl4688146939%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4687946932%_))))
                             (_%loop4687846922%_
                              _%lp-tl4688146939%_
                              (cons _%lp-hd4688046936%_ _%mod4688246929%_))))
                         (let ((_%mod4688346942%_ (reverse _%mod4688246929%_)))
                           ((lambda (_%L46946%_ _%L46948%_)
                              (cons 'begin:
                                    (_%flatten46861%_
                                     (map (lambda (_%g4696646968%_)
                                            (_%expand-path46863%_
                                             _%L46948%_
                                             _%g4696646968%_))
                                          (foldr (lambda (_%g4697146974%_
                                                          _%g4697246977%_)
                                                   (cons _%g4697146974%_
                                                         _%g4697246977%_))
                                                 '()
                                                 _%L46946%_)))))
                            _%mod4688346942%_
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
           (_%g4686446980%_ _%stx46858%_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_%stx47131%_)
       (let* ((_%g4713447158%_
               (lambda (_%g4713547154%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4713547154%_)))
              (_%g4713347286%_
               (lambda (_%g4713547162%_)
                 (if (gx#stx-pair? _%g4713547162%_)
                     (let ((_%e4713847165%_ (gx#syntax-e _%g4713547162%_)))
                       (let ((_%hd4713947169%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4713847165%_)))
                             (_%tl4714047172%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4713847165%_))))
                         (if (gx#stx-pair? _%tl4714047172%_)
                             (let ((_%e4714147175%_
                                    (gx#syntax-e _%tl4714047172%_)))
                               (let ((_%hd4714247179%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4714147175%_)))
                                     (_%tl4714347182%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4714147175%_))))
                                 (if (gx#stx-pair/null? _%tl4714347182%_)
                                     (let ((_g48196_
                                            (gx#syntax-split-splice
                                             _%tl4714347182%_
                                             '0)))
                                       (begin
                                         (let ((_g48197_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g48196_)
                                                      (##values-length
                                                       _g48196_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g48197_ 2)))
                                               (error "Context expects 2 values"
                                                      _g48197_)))
                                         (let ((_%target4714447185%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48196_ 0)))
                                               (_%tl4714647188%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48196_ 1))))
                                           (if (gx#stx-null? _%tl4714647188%_)
                                               (letrec ((_%loop4714747191%_
                                                         (lambda (_%hd4714547195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4715147198%_)
                   (if (gx#stx-pair? _%hd4714547195%_)
                       (let ((_%e4714847201%_ (gx#syntax-e _%hd4714547195%_)))
                         (let ((_%lp-hd4714947205%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4714847201%_)))
                               (_%lp-tl4715047208%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4714847201%_))))
                           (_%loop4714747191%_
                            _%lp-tl4715047208%_
                            (cons _%lp-hd4714947205%_ _%id4715147198%_))))
                       (let ((_%id4715247211%_ (reverse _%id4715147198%_)))
                         ((lambda (_%L47215%_ _%L47217%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4723447237%_
                                                 _%g4723547240%_)
                                          (cons _%g4723447237%_
                                                _%g4723547240%_))
                                        '()
                                        _%L47215%_))
                                (let* ((_%keys47251%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4724247245%_
                                                         _%g4724347248%_)
                                                  (cons _%g4724247245%_
                                                        _%g4724347248%_))
                                                '()
                                                _%L47215%_)))
                                       (_%keytab47262%_
                                        (let ((_%ht47254%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4725647258%_)
                                             (hash-put!
                                              _%ht47254%_
                                              _%g4725647258%_
                                              '#t))
                                           _%keys47251%_)
                                          _%ht47254%_))
                                       (_%exports47265%_
                                        (gx#core-expand-export-source
                                         _%L47217%_))
                                       (_%fold-e47281%_
                                        (letrec ((_%fold-e47268%_
                                                  (lambda (_%out47271%_
                                                           _%r47273%_)
                                                    (if (gx#module-export?
                                                         _%out47271%_)
                                                        (if (hash-get
                                                             _%keytab47262%_
                                                             (gx#module-export-name
                                                              _%out47271%_))
                                                            _%r47273%_
                                                            (cons _%out47271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r47273%_))
                (if (gx#export-set? _%out47271%_)
                    (foldl _%fold-e47268%_
                           _%r47273%_
                           (gx#export-set-exports _%out47271%_))
                    _%r47273%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47268%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e47281%_
                                               '()
                                               _%exports47265%_)))
                                (_%g4713447158%_ _%g4713547162%_)))
                          _%id4715247211%_
                          _%hd4714247179%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4714747191%_
                                                  _%target4714447185%_
                                                  '()))
                                               (_%g4713447158%_
                                                _%g4713547162%_)))))
                                     (_%g4713447158%_ _%g4713547162%_))))
                             (_%g4713447158%_ _%g4713547162%_))))
                     (_%g4713447158%_ _%g4713547162%_)))))
         (_%g4713347286%_ _%stx47131%_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_%out47291%_ _%rename47293%_)
      (gx#make-module-export
       (gx#module-export-context _%out47291%_)
       (gx#module-export-key _%out47291%_)
       (gx#module-export-phi _%out47291%_)
       _%rename47293%_
       (gx#module-export-weak? _%out47291%_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_%stx47295%_)
       (let* ((_%g4729847331%_
               (lambda (_%g4729947327%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4729947327%_)))
              (_%g4729747526%_
               (lambda (_%g4729947335%_)
                 (if (gx#stx-pair? _%g4729947335%_)
                     (let ((_%e4730347338%_ (gx#syntax-e _%g4729947335%_)))
                       (let ((_%hd4730447342%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4730347338%_)))
                             (_%tl4730547345%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4730347338%_))))
                         (if (gx#stx-pair? _%tl4730547345%_)
                             (let ((_%e4730647348%_
                                    (gx#syntax-e _%tl4730547345%_)))
                               (let ((_%hd4730747352%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4730647348%_)))
                                     (_%tl4730847355%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4730647348%_))))
                                 (if (gx#stx-pair/null? _%tl4730847355%_)
                                     (let ((_g48198_
                                            (gx#syntax-split-splice
                                             _%tl4730847355%_
                                             '0)))
                                       (begin
                                         (let ((_g48199_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g48198_)
                                                      (##values-length
                                                       _g48198_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g48199_ 2)))
                                               (error "Context expects 2 values"
                                                      _g48199_)))
                                         (let ((_%target4730947358%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48198_ 0)))
                                               (_%tl4731147361%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48198_ 1))))
                                           (if (gx#stx-null? _%tl4731147361%_)
                                               (letrec ((_%loop4731247364%_
                                                         (lambda (_%hd4731047368%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4731647371%_
                          _%id4731747373%_)
                   (if (gx#stx-pair? _%hd4731047368%_)
                       (let ((_%e4731347376%_ (gx#syntax-e _%hd4731047368%_)))
                         (let ((_%lp-hd4731447380%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4731347376%_)))
                               (_%lp-tl4731547383%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4731347376%_))))
                           (if (gx#stx-pair? _%lp-hd4731447380%_)
                               (let ((_%e4732047386%_
                                      (gx#syntax-e _%lp-hd4731447380%_)))
                                 (let ((_%hd4732147390%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4732047386%_)))
                                       (_%tl4732247393%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4732047386%_))))
                                   (if (gx#stx-pair? _%tl4732247393%_)
                                       (let ((_%e4732347396%_
                                              (gx#syntax-e _%tl4732247393%_)))
                                         (let ((_%hd4732447400%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4732347396%_)))
                                               (_%tl4732547403%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4732347396%_))))
                                           (if (gx#stx-null? _%tl4732547403%_)
                                               (_%loop4731247364%_
                                                _%lp-tl4731547383%_
                                                (cons _%hd4732447400%_
                                                      _%new-id4731647371%_)
                                                (cons _%hd4732147390%_
                                                      _%id4731747373%_))
                                               (_%g4729847331%_
                                                _%g4729947335%_))))
                                       (_%g4729847331%_ _%g4729947335%_))))
                               (_%g4729847331%_ _%g4729947335%_))))
                       (let ((_%new-id4731847406%_
                              (reverse _%new-id4731647371%_))
                             (_%id4731947409%_ (reverse _%id4731747373%_)))
                         ((lambda (_%L47412%_ _%L47414%_ _%L47415%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4743347436%_
                                                      _%g4743447439%_)
                                               (cons _%g4743347436%_
                                                     _%g4743447439%_))
                                             '()
                                             _%L47414%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4744147444%_
                                                      _%g4744247447%_)
                                               (cons _%g4744147444%_
                                                     _%g4744247447%_))
                                             '()
                                             _%L47412%_)))
                                (let* ((_%keytab47450%_ (make-hash-table))
                                       (_%found47453%_ (make-hash-table))
                                       (_%_47476%_
                                        (for-each
                                         (lambda (_%id47456%_ _%new-id47458%_)
                                           (hash-put!
                                            _%keytab47450%_
                                            (gx#core-identifier-key
                                             _%id47456%_)
                                            (gx#core-identifier-key
                                             _%new-id47458%_)))
                                         (foldr (lambda (_%g4745947462%_
                                                         _%g4746047465%_)
                                                  (cons _%g4745947462%_
                                                        _%g4746047465%_))
                                                '()
                                                _%L47414%_)
                                         (foldr (lambda (_%g4746747470%_
                                                         _%g4746847473%_)
                                                  (cons _%g4746747470%_
                                                        _%g4746847473%_))
                                                '()
                                                _%L47412%_)))
                                       (_%exports47479%_
                                        (gx#core-expand-export-source
                                         _%L47415%_))
                                       (_%fold-e47507%_
                                        (letrec ((_%fold-e47482%_
                                                  (lambda (_%out47485%_
                                                           _%r47487%_)
                                                    (if (gx#module-export?
                                                         _%out47485%_)
                                                        (let* ((_%name47491%_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out47485%_))
                       (_%$e47494%_ (hash-get _%keytab47450%_ _%name47491%_)))
                  (if _%$e47494%_
                      ((lambda (_%rename47498%_)
                         (hash-put! _%found47453%_ _%name47491%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                _%out47485%_
                                _%rename47498%_)
                               _%r47487%_))
                       _%$e47494%_)
                      (cons _%out47485%_ _%r47487%_)))
                (if (gx#export-set? _%out47485%_)
                    (foldl _%fold-e47482%_
                           _%r47487%_
                           (gx#export-set-exports _%out47485%_))
                    (cons _%out47485%_ _%r47487%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47482%_))
                                       (_%new-exports47510%_
                                        (foldl _%fold-e47507%_
                                               '()
                                               _%exports47479%_)))
                                  (for-each
                                   (lambda (_%id47515%_)
                                     (if (hash-get
                                          _%found47453%_
                                          (gx#core-identifier-key _%id47515%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _%stx47295%_
                                          _%id47515%_)))
                                   (foldr (lambda (_%g4751747520%_
                                                   _%g4751847523%_)
                                            (cons _%g4751747520%_
                                                  _%g4751847523%_))
                                          '()
                                          _%L47414%_))
                                  (cons 'begin: _%new-exports47510%_))
                                (_%g4729847331%_ _%g4729947335%_)))
                          _%new-id4731847406%_
                          _%id4731947409%_
                          _%hd4730747352%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4731247364%_
                                                  _%target4730947358%_
                                                  '()
                                                  '()))
                                               (_%g4729847331%_
                                                _%g4729947335%_)))))
                                     (_%g4729847331%_ _%g4729947335%_))))
                             (_%g4729847331%_ _%g4729947335%_))))
                     (_%g4729847331%_ _%g4729947335%_)))))
         (_%g4729747526%_ _%stx47295%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_%stx47531%_)
       (let* ((_%g4753447552%_
               (lambda (_%g4753547548%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4753547548%_)))
              (_%g4753347637%_
               (lambda (_%g4753547556%_)
                 (if (gx#stx-pair? _%g4753547556%_)
                     (let ((_%e4753847559%_ (gx#syntax-e _%g4753547556%_)))
                       (let ((_%hd4753947563%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4753847559%_)))
                             (_%tl4754047566%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4753847559%_))))
                         (if (gx#stx-pair? _%tl4754047566%_)
                             (let ((_%e4754147569%_
                                    (gx#syntax-e _%tl4754047566%_)))
                               (let ((_%hd4754247573%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4754147569%_)))
                                     (_%tl4754347576%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4754147569%_))))
                                 (if (gx#stx-pair? _%tl4754347576%_)
                                     (let ((_%e4754447579%_
                                            (gx#syntax-e _%tl4754347576%_)))
                                       (let ((_%hd4754547583%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4754447579%_)))
                                             (_%tl4754647586%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4754447579%_))))
                                         (if (gx#stx-null? _%tl4754647586%_)
                                             ((lambda (_%L47589%_ _%L47591%_)
                                                (if (gx#identifier? _%L47589%_)
                                                    (let* ((_%pre47607%_
                                                            (gx#stx-e
                                                             _%L47589%_))
                                                           (_%exports47610%_
                                                            (gx#core-expand-export-source
                                                             _%L47591%_))
                                                           (_%rename-e47616%_
                                                            (lambda (_%name47613%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name47613%_
                                                               _%pre47607%_)))
                                                           (_%fold-e47632%_
                                                            (letrec ((_%fold-e47619%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%out47622%_ _%r47624%_)
                                (if (gx#module-export? _%out47622%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                           _%out47622%_
                                           (_%rename-e47616%_
                                            (gx#module-export-name
                                             _%out47622%_)))
                                          _%r47624%_)
                                    (if (gx#export-set? _%out47622%_)
                                        (foldl _%fold-e47619%_
                                               _%r47624%_
                                               (gx#export-set-exports
                                                _%out47622%_))
                                        (cons _%out47622%_ _%r47624%_))))))
                      _%fold-e47619%_)))
              (cons 'begin: (foldl _%fold-e47632%_ '() _%exports47610%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4753447552%_
                                                     _%g4753547556%_)))
                                              _%hd4754547583%_
                                              _%hd4754247573%_)
                                             (_%g4753447552%_
                                              _%g4753547556%_))))
                                     (_%g4753447552%_ _%g4753547556%_))))
                             (_%g4753447552%_ _%g4753547556%_))))
                     (_%g4753447552%_ _%g4753547556%_)))))
         (_%g4753347637%_ _%stx47531%_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_%stx47641%_)
       (letrec ((_%identifiers47644%_
                 (lambda (_%id47876%_ _%unchecked?47878%_)
                   (let ((_%info47880%_
                          (gx#syntax-local-value _%id47876%_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%info47880%_))
                         (cons _%id47876%_
                               (cons (let ((__obj48177 _%info47880%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj48177
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj48177
                                              '3
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj48177
                                            'type-descriptor)))
                                     (foldr cons
                                            (cons (let ((__obj48178
                                                         _%info47880%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj48178
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj48178
                                                           '14
                                                           '#f
                                                           '#f))
                                                        (unchecked-slot-ref
                                                         __obj48178
                                                         'predicate)))
                                                  (foldr cons
                                                         (foldr cons
                                                                (if _%unchecked?47878%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons
                                   (map cdr
                                        (let ((__obj48179 _%info47880%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj48179
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj48179
                                                 '18
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj48179
                                               'unchecked-mutators))))
                                   (map cdr
                                        (let ((__obj48180 _%info47880%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj48180
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj48180
                                                 '17
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj48180
                                               'unchecked-accessors)))))
                            '())
                        (map cdr
                             (let ((__obj48181 _%info47880%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj48181
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj48181
                                      '16
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj48181
                                    'mutators)))))
                 (map cdr
                      (let ((__obj48182 _%info47880%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj48182
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj48182
                               '15
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj48182 'accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_%ctor47883%_
                                                   (let ((__obj48183
                                                          _%info47880%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj48183
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj48183
                                                            '13
                                                            '#f
                                                            '#f))
                                                         (unchecked-slot-ref
                                                          __obj48183
                                                          'constructor)))))
                                              (if _%ctor47883%_
                                                  (cons _%ctor47883%_ '())
                                                  '())))))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _%stx47641%_
                          _%id47876%_))))))
         (let* ((_%__stx4811848119%_ _%stx47641%_)
                (_%g4764847689%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%__stx4811848119%_))))
           (let ((_%__kont4812148122%_
                  (lambda (_%L47837%_ _%L47839%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4785847860%_)
                              (_%identifiers47644%_
                               _%g4785847860%_
                               (gx#stx-e _%L47839%_)))
                            (foldr (lambda (_%g4786347866%_ _%g4786447869%_)
                                     (cons _%g4786347866%_ _%g4786447869%_))
                                   '()
                                   _%L47837%_))))))
                 (_%__kont4812548126%_
                  (lambda (_%L47736%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4775247754%_)
                              (_%identifiers47644%_ _%g4775247754%_ '#f))
                            (foldr (lambda (_%g4775747760%_ _%g4775847763%_)
                                     (cons _%g4775747760%_ _%g4775847763%_))
                                   '()
                                   _%L47736%_)))))))
             (let* ((_%__match4817548176%_
                     (lambda (_%e4767247696%_
                              _%hd4767347700%_
                              _%tl4767447703%_
                              _%__splice4812748128%_
                              _%target4767547706%_
                              _%tl4767747709%_)
                       (letrec ((_%loop4767847712%_
                                 (lambda (_%hd4767647716%_ _%id4768247719%_)
                                   (if (gx#stx-pair? _%hd4767647716%_)
                                       (let ((_%e4767947722%_
                                              (gx#syntax-e _%hd4767647716%_)))
                                         (let ((_%lp-tl4768147729%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4767947722%_)))
                                               (_%lp-hd4768047726%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4767947722%_))))
                                           (_%loop4767847712%_
                                            _%lp-tl4768147729%_
                                            (cons _%lp-hd4768047726%_
                                                  _%id4768247719%_))))
                                       (let ((_%id4768347732%_
                                              (reverse _%id4768247719%_)))
                                         (_%__kont4812548126%_
                                          _%id4768347732%_))))))
                         (_%loop4767847712%_ _%target4767547706%_ '()))))
                    (_%__match4816148162%_
                     (lambda (_%e4765247773%_
                              _%hd4765347777%_
                              _%tl4765447780%_
                              _%e4765547783%_
                              _%hd4765647787%_
                              _%tl4765747790%_
                              _%e4765847793%_
                              _%e4765947797%_
                              _%hd4766047801%_
                              _%tl4766147804%_
                              _%__splice4812348124%_
                              _%target4766247807%_
                              _%tl4766447810%_)
                       (letrec ((_%loop4766547813%_
                                 (lambda (_%hd4766347817%_ _%id4766947820%_)
                                   (if (gx#stx-pair? _%hd4766347817%_)
                                       (let ((_%e4766647823%_
                                              (gx#syntax-e _%hd4766347817%_)))
                                         (let ((_%lp-tl4766847830%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4766647823%_)))
                                               (_%lp-hd4766747827%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4766647823%_))))
                                           (_%loop4766547813%_
                                            _%lp-tl4766847830%_
                                            (cons _%lp-hd4766747827%_
                                                  _%id4766947820%_))))
                                       (let ((_%id4767047833%_
                                              (reverse _%id4766947820%_)))
                                         (_%__kont4812148122%_
                                          _%id4767047833%_
                                          _%hd4766047801%_))))))
                         (_%loop4766547813%_ _%target4766247807%_ '())))))
               (if (gx#stx-pair? _%__stx4811848119%_)
                   (let ((_%e4765247773%_ (gx#syntax-e _%__stx4811848119%_)))
                     (let ((_%tl4765447780%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4765247773%_)))
                           (_%hd4765347777%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4765247773%_))))
                       (if (gx#stx-pair? _%tl4765447780%_)
                           (let ((_%e4765547783%_
                                  (gx#syntax-e _%tl4765447780%_)))
                             (let ((_%tl4765747790%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4765547783%_)))
                                   (_%hd4765647787%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4765547783%_))))
                               (if (gx#stx-datum? _%hd4765647787%_)
                                   (let ((_%e4765847793%_
                                          (gx#stx-e _%hd4765647787%_)))
                                     (if (equal? _%e4765847793%_ 'unchecked:)
                                         (if (gx#stx-pair? _%tl4765747790%_)
                                             (let ((_%e4765947797%_
                                                    (gx#syntax-e
                                                     _%tl4765747790%_)))
                                               (let ((_%tl4766147804%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4765947797%_)))
                                                     (_%hd4766047801%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4765947797%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%tl4766147804%_)
                                                     (let ((_%__splice4812348124%_
                                                            (gx#syntax-split-splice->vector
                                                             _%tl4766147804%_
                                                             '0)))
                                                       (let ((_%tl4766447810%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4812348124%_ '1)))
                     (_%target4766247807%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4812348124%_ '0))))
                 (if (gx#stx-null? _%tl4766447810%_)
                     (_%__match4816148162%_
                      _%e4765247773%_
                      _%hd4765347777%_
                      _%tl4765447780%_
                      _%e4765547783%_
                      _%hd4765647787%_
                      _%tl4765747790%_
                      _%e4765847793%_
                      _%e4765947797%_
                      _%hd4766047801%_
                      _%tl4766147804%_
                      _%__splice4812348124%_
                      _%target4766247807%_
                      _%tl4766447810%_)
                     (if (gx#stx-pair/null? _%tl4765447780%_)
                         (let ((_%__splice4812748128%_
                                (gx#syntax-split-splice->vector
                                 _%tl4765447780%_
                                 '0)))
                           (let ((_%tl4767747709%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4812748128%_ '1)))
                                 (_%target4767547706%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4812748128%_ '0))))
                             (if (gx#stx-null? _%tl4767747709%_)
                                 (_%__match4817548176%_
                                  _%e4765247773%_
                                  _%hd4765347777%_
                                  _%tl4765447780%_
                                  _%__splice4812748128%_
                                  _%target4767547706%_
                                  _%tl4767747709%_)
                                 (let ()
                                   (declare (not safe))
                                   (_%g4764847689%_)))))
                         (let () (declare (not safe)) (_%g4764847689%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _%tl4765447780%_)
                                                         (let ((_%__splice4812748128%_
                                                                (gx#syntax-split-splice->vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl4765447780%_
                         '0)))
                   (let ((_%tl4767747709%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4812748128%_ '1)))
                         (_%target4767547706%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4812748128%_ '0))))
                     (if (gx#stx-null? _%tl4767747709%_)
                         (_%__match4817548176%_
                          _%e4765247773%_
                          _%hd4765347777%_
                          _%tl4765447780%_
                          _%__splice4812748128%_
                          _%target4767547706%_
                          _%tl4767747709%_)
                         (let () (declare (not safe)) (_%g4764847689%_)))))
                 (let () (declare (not safe)) (_%g4764847689%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _%tl4765447780%_)
                                                 (let ((_%__splice4812748128%_
                                                        (gx#syntax-split-splice->vector
                                                         _%tl4765447780%_
                                                         '0)))
                                                   (let ((_%tl4767747709%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4812748128%_
                                                             '1)))
                                                         (_%target4767547706%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4812748128%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4767747709%_)
                                                         (_%__match4817548176%_
                                                          _%e4765247773%_
                                                          _%hd4765347777%_
                                                          _%tl4765447780%_
                                                          _%__splice4812748128%_
                                                          _%target4767547706%_
                                                          _%tl4767747709%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4764847689%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4764847689%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4765447780%_)
                                             (let ((_%__splice4812748128%_
                                                    (gx#syntax-split-splice->vector
                                                     _%tl4765447780%_
                                                     '0)))
                                               (let ((_%tl4767747709%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4812748128%_
                                                         '1)))
                                                     (_%target4767547706%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4812748128%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4767747709%_)
                                                     (_%__match4817548176%_
                                                      _%e4765247773%_
                                                      _%hd4765347777%_
                                                      _%tl4765447780%_
                                                      _%__splice4812748128%_
                                                      _%target4767547706%_
                                                      _%tl4767747709%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4764847689%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4764847689%_)))))
                                   (if (gx#stx-pair/null? _%tl4765447780%_)
                                       (let ((_%__splice4812748128%_
                                              (gx#syntax-split-splice->vector
                                               _%tl4765447780%_
                                               '0)))
                                         (let ((_%tl4767747709%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4812748128%_
                                                   '1)))
                                               (_%target4767547706%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4812748128%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4767747709%_)
                                               (_%__match4817548176%_
                                                _%e4765247773%_
                                                _%hd4765347777%_
                                                _%tl4765447780%_
                                                _%__splice4812748128%_
                                                _%target4767547706%_
                                                _%tl4767747709%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4764847689%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4764847689%_))))))
                           (if (gx#stx-pair/null? _%tl4765447780%_)
                               (let ((_%__splice4812748128%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4765447780%_
                                       '0)))
                                 (let ((_%tl4767747709%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4812748128%_
                                           '1)))
                                       (_%target4767547706%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4812748128%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4767747709%_)
                                       (_%__match4817548176%_
                                        _%e4765247773%_
                                        _%hd4765347777%_
                                        _%tl4765447780%_
                                        _%__splice4812748128%_
                                        _%target4767547706%_
                                        _%tl4767747709%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4764847689%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4764847689%_))))))
                   (let () (declare (not safe)) (_%g4764847689%_)))))))))))
