(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_%$stx41879%_)
      (let* ((_%__stx4453344534%_ _%$stx41879%_)
             (_%g4188441903%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4453344534%_))))
        (let ((_%__kont4453644537%_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (_%__kont4453844539%_
               (lambda (_%L41930%_ _%L41932%_ _%L41933%_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _%L41932%_
                                   (cons (cons _%L41933%_ _%L41930%_) '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _%L41932%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? _%__stx4453344534%_)
              (let ((_%e4188841955%_ (gx#syntax-e _%__stx4453344534%_)))
                (let ((_%tl4188641962%_
                       (let () (declare (not safe)) (##cdr _%e4188841955%_)))
                      (_%hd4188741959%_
                       (let () (declare (not safe)) (##car _%e4188841955%_))))
                  (if (gx#stx-null? _%tl4188641962%_)
                      (_%__kont4453644537%_)
                      (if (gx#stx-pair? _%tl4188641962%_)
                          (let ((_%e4189741920%_
                                 (gx#syntax-e _%tl4188641962%_)))
                            (let ((_%tl4189541927%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4189741920%_)))
                                  (_%hd4189641924%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4189741920%_))))
                              (_%__kont4453844539%_
                               _%tl4189541927%_
                               _%hd4189641924%_
                               _%hd4188741959%_)))
                          (let () (declare (not safe)) (_%g4188441903%_))))))
              (let () (declare (not safe)) (_%g4188441903%_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_%$stx41973%_)
      (let* ((_%__stx4456344564%_ _%$stx41973%_)
             (_%g4197842018%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4456344564%_))))
        (let ((_%__kont4456644567%_
               (lambda (_%L42156%_ _%L42158%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L42158%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _%L42156%_ '()))
                                   '())))))
              (_%__kont4456844569%_
               (lambda (_%L42085%_ _%L42087%_ _%L42088%_ _%L42089%_)
                 (cons _%L42089%_
                       (cons _%L42088%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L42087%_
                                               (foldr (lambda (_%g4211042113%_
                                                               _%g4211142116%_)
                                                        (cons _%g4211042113%_
                                                              _%g4211142116%_))
                                                      '()
                                                      _%L42085%_)))
                                   '()))))))
          (let* ((_%__match4461844619%_
                  (lambda (_%e4199742025%_
                           _%hd4199642029%_
                           _%tl4199542032%_
                           _%e4200042035%_
                           _%hd4199942039%_
                           _%tl4199842042%_
                           _%e4200342045%_
                           _%hd4200242049%_
                           _%tl4200142052%_
                           _%__splice4457044571%_
                           _%target4200442055%_
                           _%tl4200642058%_)
                    (letrec ((_%loop4200742061%_
                              (lambda (_%hd4200542065%_ _%body4201142068%_)
                                (if (gx#stx-pair? _%hd4200542065%_)
                                    (let ((_%e4200842071%_
                                           (gx#syntax-e _%hd4200542065%_)))
                                      (let ((_%lp-tl4201042078%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4200842071%_)))
                                            (_%lp-hd4200942075%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4200842071%_))))
                                        (_%loop4200742061%_
                                         _%lp-tl4201042078%_
                                         (cons _%lp-hd4200942075%_
                                               _%body4201142068%_))))
                                    (let ((_%body4201242081%_
                                           (reverse _%body4201142068%_)))
                                      (let ((_%L42085%_ _%body4201242081%_)
                                            (_%L42087%_ _%tl4200142052%_)
                                            (_%L42088%_ _%hd4200242049%_)
                                            (_%L42089%_ _%hd4199642029%_))
                                        (if (gx#identifier? _%L42088%_)
                                            (_%__kont4456844569%_
                                             _%L42085%_
                                             _%L42087%_
                                             _%L42088%_
                                             _%L42089%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4197842018%_)))))))))
                      (_%loop4200742061%_ _%target4200442055%_ '()))))
                 (_%__match4459244593%_
                  (lambda (_%e4198442126%_
                           _%hd4198342130%_
                           _%tl4198242133%_
                           _%e4198742136%_
                           _%hd4198642140%_
                           _%tl4198542143%_
                           _%e4199042146%_
                           _%hd4198942150%_
                           _%tl4198842153%_)
                    (let ((_%L42156%_ _%hd4198942150%_)
                          (_%L42158%_ _%hd4198642140%_))
                      (if (gx#identifier? _%L42158%_)
                          (_%__kont4456644567%_ _%L42156%_ _%L42158%_)
                          (if (gx#stx-pair? _%hd4198642140%_)
                              (let ((_%e4200342045%_
                                     (gx#syntax-e _%hd4198642140%_)))
                                (let ((_%tl4200142052%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4200342045%_)))
                                      (_%hd4200242049%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4200342045%_))))
                                  (if (gx#stx-pair/null? _%tl4198542143%_)
                                      (let ((_%__splice4457044571%_
                                             (gx#syntax-split-splice
                                              _%tl4198542143%_
                                              '0)))
                                        (let ((_%tl4200642058%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4457044571%_
                                                  '1)))
                                              (_%target4200442055%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4457044571%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4200642058%_)
                                              (_%__match4461844619%_
                                               _%e4198442126%_
                                               _%hd4198342130%_
                                               _%tl4198242133%_
                                               _%e4198742136%_
                                               _%hd4198642140%_
                                               _%tl4198542143%_
                                               _%e4200342045%_
                                               _%hd4200242049%_
                                               _%tl4200142052%_
                                               _%__splice4457044571%_
                                               _%target4200442055%_
                                               _%tl4200642058%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4197842018%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4197842018%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4197842018%_))))))))
            (if (gx#stx-pair? _%__stx4456344564%_)
                (let ((_%e4198442126%_ (gx#syntax-e _%__stx4456344564%_)))
                  (let ((_%tl4198242133%_
                         (let () (declare (not safe)) (##cdr _%e4198442126%_)))
                        (_%hd4198342130%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4198442126%_))))
                    (if (gx#stx-pair? _%tl4198242133%_)
                        (let ((_%e4198742136%_ (gx#syntax-e _%tl4198242133%_)))
                          (let ((_%tl4198542143%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4198742136%_)))
                                (_%hd4198642140%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4198742136%_))))
                            (if (gx#stx-pair? _%tl4198542143%_)
                                (let ((_%e4199042146%_
                                       (gx#syntax-e _%tl4198542143%_)))
                                  (let ((_%tl4198842153%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4199042146%_)))
                                        (_%hd4198942150%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4199042146%_))))
                                    (if (gx#stx-null? _%tl4198842153%_)
                                        (_%__match4459244593%_
                                         _%e4198442126%_
                                         _%hd4198342130%_
                                         _%tl4198242133%_
                                         _%e4198742136%_
                                         _%hd4198642140%_
                                         _%tl4198542143%_
                                         _%e4199042146%_
                                         _%hd4198942150%_
                                         _%tl4198842153%_)
                                        (if (gx#stx-pair? _%hd4198642140%_)
                                            (let ((_%e4200342045%_
                                                   (gx#syntax-e
                                                    _%hd4198642140%_)))
                                              (let ((_%tl4200142052%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4200342045%_)))
                                                    (_%hd4200242049%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4200342045%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4198542143%_)
                                                    (let ((_%__splice4457044571%_
                                                           (gx#syntax-split-splice
                                                            _%tl4198542143%_
                                                            '0)))
                                                      (let ((_%tl4200642058%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4457044571%_ '1)))
                    (_%target4200442055%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4457044571%_ '0))))
                (if (gx#stx-null? _%tl4200642058%_)
                    (_%__match4461844619%_
                     _%e4198442126%_
                     _%hd4198342130%_
                     _%tl4198242133%_
                     _%e4198742136%_
                     _%hd4198642140%_
                     _%tl4198542143%_
                     _%e4200342045%_
                     _%hd4200242049%_
                     _%tl4200142052%_
                     _%__splice4457044571%_
                     _%target4200442055%_
                     _%tl4200642058%_)
                    (let () (declare (not safe)) (_%g4197842018%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4197842018%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4197842018%_))))))
                                (if (gx#stx-pair? _%hd4198642140%_)
                                    (let ((_%e4200342045%_
                                           (gx#syntax-e _%hd4198642140%_)))
                                      (let ((_%tl4200142052%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4200342045%_)))
                                            (_%hd4200242049%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4200342045%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4198542143%_)
                                            (let ((_%__splice4457044571%_
                                                   (gx#syntax-split-splice
                                                    _%tl4198542143%_
                                                    '0)))
                                              (let ((_%tl4200642058%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4457044571%_
                                                        '1)))
                                                    (_%target4200442055%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4457044571%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4200642058%_)
                                                    (_%__match4461844619%_
                                                     _%e4198442126%_
                                                     _%hd4198342130%_
                                                     _%tl4198242133%_
                                                     _%e4198742136%_
                                                     _%hd4198642140%_
                                                     _%tl4198542143%_
                                                     _%e4200342045%_
                                                     _%hd4200242049%_
                                                     _%tl4200142052%_
                                                     _%__splice4457044571%_
                                                     _%target4200442055%_
                                                     _%tl4200642058%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4197842018%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4197842018%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4197842018%_))))))
                        (let () (declare (not safe)) (_%g4197842018%_)))))
                (let () (declare (not safe)) (_%g4197842018%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_%$stx42178%_)
      (let* ((_%__stx4462144622%_ _%$stx42178%_)
             (_%g4218342223%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4462144622%_))))
        (let ((_%__kont4462444625%_
               (lambda (_%L42361%_ _%L42363%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L42363%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _%L42361%_ '()))
                                   '())))))
              (_%__kont4462644627%_
               (lambda (_%L42290%_ _%L42292%_ _%L42293%_ _%L42294%_)
                 (cons _%L42294%_
                       (cons _%L42293%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L42292%_
                                               (foldr (lambda (_%g4231542318%_
                                                               _%g4231642321%_)
                                                        (cons _%g4231542318%_
                                                              _%g4231642321%_))
                                                      '()
                                                      _%L42290%_)))
                                   '()))))))
          (let* ((_%__match4467644677%_
                  (lambda (_%e4220242230%_
                           _%hd4220142234%_
                           _%tl4220042237%_
                           _%e4220542240%_
                           _%hd4220442244%_
                           _%tl4220342247%_
                           _%e4220842250%_
                           _%hd4220742254%_
                           _%tl4220642257%_
                           _%__splice4462844629%_
                           _%target4220942260%_
                           _%tl4221142263%_)
                    (letrec ((_%loop4221242266%_
                              (lambda (_%hd4221042270%_ _%body4221642273%_)
                                (if (gx#stx-pair? _%hd4221042270%_)
                                    (let ((_%e4221342276%_
                                           (gx#syntax-e _%hd4221042270%_)))
                                      (let ((_%lp-tl4221542283%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4221342276%_)))
                                            (_%lp-hd4221442280%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4221342276%_))))
                                        (_%loop4221242266%_
                                         _%lp-tl4221542283%_
                                         (cons _%lp-hd4221442280%_
                                               _%body4221642273%_))))
                                    (let ((_%body4221742286%_
                                           (reverse _%body4221642273%_)))
                                      (let ((_%L42290%_ _%body4221742286%_)
                                            (_%L42292%_ _%tl4220642257%_)
                                            (_%L42293%_ _%hd4220742254%_)
                                            (_%L42294%_ _%hd4220142234%_))
                                        (if (gx#identifier? _%L42293%_)
                                            (_%__kont4462644627%_
                                             _%L42290%_
                                             _%L42292%_
                                             _%L42293%_
                                             _%L42294%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4218342223%_)))))))))
                      (_%loop4221242266%_ _%target4220942260%_ '()))))
                 (_%__match4465044651%_
                  (lambda (_%e4218942331%_
                           _%hd4218842335%_
                           _%tl4218742338%_
                           _%e4219242341%_
                           _%hd4219142345%_
                           _%tl4219042348%_
                           _%e4219542351%_
                           _%hd4219442355%_
                           _%tl4219342358%_)
                    (let ((_%L42361%_ _%hd4219442355%_)
                          (_%L42363%_ _%hd4219142345%_))
                      (if (gx#identifier? _%L42363%_)
                          (_%__kont4462444625%_ _%L42361%_ _%L42363%_)
                          (if (gx#stx-pair? _%hd4219142345%_)
                              (let ((_%e4220842250%_
                                     (gx#syntax-e _%hd4219142345%_)))
                                (let ((_%tl4220642257%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4220842250%_)))
                                      (_%hd4220742254%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4220842250%_))))
                                  (if (gx#stx-pair/null? _%tl4219042348%_)
                                      (let ((_%__splice4462844629%_
                                             (gx#syntax-split-splice
                                              _%tl4219042348%_
                                              '0)))
                                        (let ((_%tl4221142263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4462844629%_
                                                  '1)))
                                              (_%target4220942260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4462844629%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4221142263%_)
                                              (_%__match4467644677%_
                                               _%e4218942331%_
                                               _%hd4218842335%_
                                               _%tl4218742338%_
                                               _%e4219242341%_
                                               _%hd4219142345%_
                                               _%tl4219042348%_
                                               _%e4220842250%_
                                               _%hd4220742254%_
                                               _%tl4220642257%_
                                               _%__splice4462844629%_
                                               _%target4220942260%_
                                               _%tl4221142263%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4218342223%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4218342223%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4218342223%_))))))))
            (if (gx#stx-pair? _%__stx4462144622%_)
                (let ((_%e4218942331%_ (gx#syntax-e _%__stx4462144622%_)))
                  (let ((_%tl4218742338%_
                         (let () (declare (not safe)) (##cdr _%e4218942331%_)))
                        (_%hd4218842335%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4218942331%_))))
                    (if (gx#stx-pair? _%tl4218742338%_)
                        (let ((_%e4219242341%_ (gx#syntax-e _%tl4218742338%_)))
                          (let ((_%tl4219042348%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4219242341%_)))
                                (_%hd4219142345%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4219242341%_))))
                            (if (gx#stx-pair? _%tl4219042348%_)
                                (let ((_%e4219542351%_
                                       (gx#syntax-e _%tl4219042348%_)))
                                  (let ((_%tl4219342358%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4219542351%_)))
                                        (_%hd4219442355%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4219542351%_))))
                                    (if (gx#stx-null? _%tl4219342358%_)
                                        (_%__match4465044651%_
                                         _%e4218942331%_
                                         _%hd4218842335%_
                                         _%tl4218742338%_
                                         _%e4219242341%_
                                         _%hd4219142345%_
                                         _%tl4219042348%_
                                         _%e4219542351%_
                                         _%hd4219442355%_
                                         _%tl4219342358%_)
                                        (if (gx#stx-pair? _%hd4219142345%_)
                                            (let ((_%e4220842250%_
                                                   (gx#syntax-e
                                                    _%hd4219142345%_)))
                                              (let ((_%tl4220642257%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4220842250%_)))
                                                    (_%hd4220742254%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4220842250%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4219042348%_)
                                                    (let ((_%__splice4462844629%_
                                                           (gx#syntax-split-splice
                                                            _%tl4219042348%_
                                                            '0)))
                                                      (let ((_%tl4221142263%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4462844629%_ '1)))
                    (_%target4220942260%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4462844629%_ '0))))
                (if (gx#stx-null? _%tl4221142263%_)
                    (_%__match4467644677%_
                     _%e4218942331%_
                     _%hd4218842335%_
                     _%tl4218742338%_
                     _%e4219242341%_
                     _%hd4219142345%_
                     _%tl4219042348%_
                     _%e4220842250%_
                     _%hd4220742254%_
                     _%tl4220642257%_
                     _%__splice4462844629%_
                     _%target4220942260%_
                     _%tl4221142263%_)
                    (let () (declare (not safe)) (_%g4218342223%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4218342223%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4218342223%_))))))
                                (if (gx#stx-pair? _%hd4219142345%_)
                                    (let ((_%e4220842250%_
                                           (gx#syntax-e _%hd4219142345%_)))
                                      (let ((_%tl4220642257%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4220842250%_)))
                                            (_%hd4220742254%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4220842250%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4219042348%_)
                                            (let ((_%__splice4462844629%_
                                                   (gx#syntax-split-splice
                                                    _%tl4219042348%_
                                                    '0)))
                                              (let ((_%tl4221142263%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4462844629%_
                                                        '1)))
                                                    (_%target4220942260%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4462844629%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4221142263%_)
                                                    (_%__match4467644677%_
                                                     _%e4218942331%_
                                                     _%hd4218842335%_
                                                     _%tl4218742338%_
                                                     _%e4219242341%_
                                                     _%hd4219142345%_
                                                     _%tl4219042348%_
                                                     _%e4220842250%_
                                                     _%hd4220742254%_
                                                     _%tl4220642257%_
                                                     _%__splice4462844629%_
                                                     _%target4220942260%_
                                                     _%tl4221142263%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4218342223%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4218342223%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4218342223%_))))))
                        (let () (declare (not safe)) (_%g4218342223%_)))))
                (let () (declare (not safe)) (_%g4218342223%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_%$stx42383%_)
      (let* ((_%__stx4467944680%_ _%$stx42383%_)
             (_%g4238842428%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4467944680%_))))
        (let ((_%__kont4468244683%_
               (lambda (_%L42566%_ _%L42568%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L42568%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _%L42566%_ '()))
                                   '())))))
              (_%__kont4468444685%_
               (lambda (_%L42495%_ _%L42497%_ _%L42498%_ _%L42499%_)
                 (cons _%L42499%_
                       (cons _%L42498%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L42497%_
                                               (foldr (lambda (_%g4252042523%_
                                                               _%g4252142526%_)
                                                        (cons _%g4252042523%_
                                                              _%g4252142526%_))
                                                      '()
                                                      _%L42495%_)))
                                   '()))))))
          (let* ((_%__match4473444735%_
                  (lambda (_%e4240742435%_
                           _%hd4240642439%_
                           _%tl4240542442%_
                           _%e4241042445%_
                           _%hd4240942449%_
                           _%tl4240842452%_
                           _%e4241342455%_
                           _%hd4241242459%_
                           _%tl4241142462%_
                           _%__splice4468644687%_
                           _%target4241442465%_
                           _%tl4241642468%_)
                    (letrec ((_%loop4241742471%_
                              (lambda (_%hd4241542475%_ _%body4242142478%_)
                                (if (gx#stx-pair? _%hd4241542475%_)
                                    (let ((_%e4241842481%_
                                           (gx#syntax-e _%hd4241542475%_)))
                                      (let ((_%lp-tl4242042488%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4241842481%_)))
                                            (_%lp-hd4241942485%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4241842481%_))))
                                        (_%loop4241742471%_
                                         _%lp-tl4242042488%_
                                         (cons _%lp-hd4241942485%_
                                               _%body4242142478%_))))
                                    (let ((_%body4242242491%_
                                           (reverse _%body4242142478%_)))
                                      (let ((_%L42495%_ _%body4242242491%_)
                                            (_%L42497%_ _%tl4241142462%_)
                                            (_%L42498%_ _%hd4241242459%_)
                                            (_%L42499%_ _%hd4240642439%_))
                                        (if (gx#identifier? _%L42498%_)
                                            (_%__kont4468444685%_
                                             _%L42495%_
                                             _%L42497%_
                                             _%L42498%_
                                             _%L42499%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4238842428%_)))))))))
                      (_%loop4241742471%_ _%target4241442465%_ '()))))
                 (_%__match4470844709%_
                  (lambda (_%e4239442536%_
                           _%hd4239342540%_
                           _%tl4239242543%_
                           _%e4239742546%_
                           _%hd4239642550%_
                           _%tl4239542553%_
                           _%e4240042556%_
                           _%hd4239942560%_
                           _%tl4239842563%_)
                    (let ((_%L42566%_ _%hd4239942560%_)
                          (_%L42568%_ _%hd4239642550%_))
                      (if (gx#identifier? _%L42568%_)
                          (_%__kont4468244683%_ _%L42566%_ _%L42568%_)
                          (if (gx#stx-pair? _%hd4239642550%_)
                              (let ((_%e4241342455%_
                                     (gx#syntax-e _%hd4239642550%_)))
                                (let ((_%tl4241142462%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4241342455%_)))
                                      (_%hd4241242459%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4241342455%_))))
                                  (if (gx#stx-pair/null? _%tl4239542553%_)
                                      (let ((_%__splice4468644687%_
                                             (gx#syntax-split-splice
                                              _%tl4239542553%_
                                              '0)))
                                        (let ((_%tl4241642468%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4468644687%_
                                                  '1)))
                                              (_%target4241442465%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4468644687%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4241642468%_)
                                              (_%__match4473444735%_
                                               _%e4239442536%_
                                               _%hd4239342540%_
                                               _%tl4239242543%_
                                               _%e4239742546%_
                                               _%hd4239642550%_
                                               _%tl4239542553%_
                                               _%e4241342455%_
                                               _%hd4241242459%_
                                               _%tl4241142462%_
                                               _%__splice4468644687%_
                                               _%target4241442465%_
                                               _%tl4241642468%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4238842428%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4238842428%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4238842428%_))))))))
            (if (gx#stx-pair? _%__stx4467944680%_)
                (let ((_%e4239442536%_ (gx#syntax-e _%__stx4467944680%_)))
                  (let ((_%tl4239242543%_
                         (let () (declare (not safe)) (##cdr _%e4239442536%_)))
                        (_%hd4239342540%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4239442536%_))))
                    (if (gx#stx-pair? _%tl4239242543%_)
                        (let ((_%e4239742546%_ (gx#syntax-e _%tl4239242543%_)))
                          (let ((_%tl4239542553%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4239742546%_)))
                                (_%hd4239642550%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4239742546%_))))
                            (if (gx#stx-pair? _%tl4239542553%_)
                                (let ((_%e4240042556%_
                                       (gx#syntax-e _%tl4239542553%_)))
                                  (let ((_%tl4239842563%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4240042556%_)))
                                        (_%hd4239942560%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4240042556%_))))
                                    (if (gx#stx-null? _%tl4239842563%_)
                                        (_%__match4470844709%_
                                         _%e4239442536%_
                                         _%hd4239342540%_
                                         _%tl4239242543%_
                                         _%e4239742546%_
                                         _%hd4239642550%_
                                         _%tl4239542553%_
                                         _%e4240042556%_
                                         _%hd4239942560%_
                                         _%tl4239842563%_)
                                        (if (gx#stx-pair? _%hd4239642550%_)
                                            (let ((_%e4241342455%_
                                                   (gx#syntax-e
                                                    _%hd4239642550%_)))
                                              (let ((_%tl4241142462%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4241342455%_)))
                                                    (_%hd4241242459%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4241342455%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4239542553%_)
                                                    (let ((_%__splice4468644687%_
                                                           (gx#syntax-split-splice
                                                            _%tl4239542553%_
                                                            '0)))
                                                      (let ((_%tl4241642468%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4468644687%_ '1)))
                    (_%target4241442465%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4468644687%_ '0))))
                (if (gx#stx-null? _%tl4241642468%_)
                    (_%__match4473444735%_
                     _%e4239442536%_
                     _%hd4239342540%_
                     _%tl4239242543%_
                     _%e4239742546%_
                     _%hd4239642550%_
                     _%tl4239542553%_
                     _%e4241342455%_
                     _%hd4241242459%_
                     _%tl4241142462%_
                     _%__splice4468644687%_
                     _%target4241442465%_
                     _%tl4241642468%_)
                    (let () (declare (not safe)) (_%g4238842428%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4238842428%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4238842428%_))))))
                                (if (gx#stx-pair? _%hd4239642550%_)
                                    (let ((_%e4241342455%_
                                           (gx#syntax-e _%hd4239642550%_)))
                                      (let ((_%tl4241142462%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4241342455%_)))
                                            (_%hd4241242459%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4241342455%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4239542553%_)
                                            (let ((_%__splice4468644687%_
                                                   (gx#syntax-split-splice
                                                    _%tl4239542553%_
                                                    '0)))
                                              (let ((_%tl4241642468%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4468644687%_
                                                        '1)))
                                                    (_%target4241442465%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4468644687%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4241642468%_)
                                                    (_%__match4473444735%_
                                                     _%e4239442536%_
                                                     _%hd4239342540%_
                                                     _%tl4239242543%_
                                                     _%e4239742546%_
                                                     _%hd4239642550%_
                                                     _%tl4239542553%_
                                                     _%e4241342455%_
                                                     _%hd4241242459%_
                                                     _%tl4241142462%_
                                                     _%__splice4468644687%_
                                                     _%target4241442465%_
                                                     _%tl4241642468%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4238842428%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4238842428%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4238842428%_))))))
                        (let () (declare (not safe)) (_%g4238842428%_)))))
                (let () (declare (not safe)) (_%g4238842428%_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_%stx42588%_)
       (let* ((_%g4259142611%_
               (lambda (_%g4259242607%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4259242607%_)))
              (_%g4259042682%_
               (lambda (_%g4259242615%_)
                 (if (gx#stx-pair? _%g4259242615%_)
                     (let ((_%e4259642618%_ (gx#syntax-e _%g4259242615%_)))
                       (let ((_%hd4259542622%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4259642618%_)))
                             (_%tl4259442625%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4259642618%_))))
                         (if (gx#stx-pair/null? _%tl4259442625%_)
                             (let ((_g44829_
                                    (gx#syntax-split-splice
                                     _%tl4259442625%_
                                     '0)))
                               (begin
                                 (let ((_g44830_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g44829_)
                                              (##vector-length _g44829_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g44830_ 2)))
                                       (error "Context expects 2 values"
                                              _g44830_)))
                                 (let ((_%target4259742628%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g44829_ 0)))
                                       (_%tl4259942631%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g44829_ 1))))
                                   (if (gx#stx-null? _%tl4259942631%_)
                                       (letrec ((_%loop4260042634%_
                                                 (lambda (_%hd4259842638%_
                                                          _%body4260442641%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4259842638%_)
                                                       (let ((_%e4260142644%_
                                                              (gx#syntax-e
                                                               _%hd4259842638%_)))
                                                         (let ((_%lp-hd4260242648%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4260142644%_)))
                       (_%lp-tl4260342651%_
                        (let () (declare (not safe)) (##cdr _%e4260142644%_))))
                   (_%loop4260042634%_
                    _%lp-tl4260342651%_
                    (cons _%lp-hd4260242648%_ _%body4260442641%_))))
               (let ((_%body4260542654%_ (reverse _%body4260442641%_)))
                 ((lambda (_%L42658%_)
                    (cons 'phi:
                          (cons '1
                                (foldr (lambda (_%g4267342676%_
                                                _%g4267442679%_)
                                         (cons _%g4267342676%_
                                               _%g4267442679%_))
                                       '()
                                       _%L42658%_))))
                  _%body4260542654%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4260042634%_
                                          _%target4259742628%_
                                          '()))
                                       (_%g4259142611%_ _%g4259242615%_)))))
                             (_%g4259142611%_ _%g4259242615%_))))
                     (_%g4259142611%_ _%g4259242615%_)))))
         (_%g4259042682%_ _%stx42588%_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_%stx42687%_)
       (let* ((_%g4269042710%_
               (lambda (_%g4269142706%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4269142706%_)))
              (_%g4268942781%_
               (lambda (_%g4269142714%_)
                 (if (gx#stx-pair? _%g4269142714%_)
                     (let ((_%e4269542717%_ (gx#syntax-e _%g4269142714%_)))
                       (let ((_%hd4269442721%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4269542717%_)))
                             (_%tl4269342724%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4269542717%_))))
                         (if (gx#stx-pair/null? _%tl4269342724%_)
                             (let ((_g44831_
                                    (gx#syntax-split-splice
                                     _%tl4269342724%_
                                     '0)))
                               (begin
                                 (let ((_g44832_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g44831_)
                                              (##vector-length _g44831_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g44832_ 2)))
                                       (error "Context expects 2 values"
                                              _g44832_)))
                                 (let ((_%target4269642727%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g44831_ 0)))
                                       (_%tl4269842730%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g44831_ 1))))
                                   (if (gx#stx-null? _%tl4269842730%_)
                                       (letrec ((_%loop4269942733%_
                                                 (lambda (_%hd4269742737%_
                                                          _%body4270342740%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4269742737%_)
                                                       (let ((_%e4270042743%_
                                                              (gx#syntax-e
                                                               _%hd4269742737%_)))
                                                         (let ((_%lp-hd4270142747%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4270042743%_)))
                       (_%lp-tl4270242750%_
                        (let () (declare (not safe)) (##cdr _%e4270042743%_))))
                   (_%loop4269942733%_
                    _%lp-tl4270242750%_
                    (cons _%lp-hd4270142747%_ _%body4270342740%_))))
               (let ((_%body4270442753%_ (reverse _%body4270342740%_)))
                 ((lambda (_%L42757%_)
                    (cons 'phi:
                          (cons '-1
                                (foldr (lambda (_%g4277242775%_
                                                _%g4277342778%_)
                                         (cons _%g4277242775%_
                                               _%g4277342778%_))
                                       '()
                                       _%L42757%_))))
                  _%body4270442753%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4269942733%_
                                          _%target4269642727%_
                                          '()))
                                       (_%g4269042710%_ _%g4269142714%_)))))
                             (_%g4269042710%_ _%g4269142714%_))))
                     (_%g4269042710%_ _%g4269142714%_)))))
         (_%g4268942781%_ _%stx42687%_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_%stx42786%_)
       (let* ((_%g4278942813%_
               (lambda (_%g4279042809%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4279042809%_)))
              (_%g4278842941%_
               (lambda (_%g4279042817%_)
                 (if (gx#stx-pair? _%g4279042817%_)
                     (let ((_%e4279542820%_ (gx#syntax-e _%g4279042817%_)))
                       (let ((_%hd4279442824%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4279542820%_)))
                             (_%tl4279342827%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4279542820%_))))
                         (if (gx#stx-pair? _%tl4279342827%_)
                             (let ((_%e4279842830%_
                                    (gx#syntax-e _%tl4279342827%_)))
                               (let ((_%hd4279742834%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4279842830%_)))
                                     (_%tl4279642837%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4279842830%_))))
                                 (if (gx#stx-pair/null? _%tl4279642837%_)
                                     (let ((_g44833_
                                            (gx#syntax-split-splice
                                             _%tl4279642837%_
                                             '0)))
                                       (begin
                                         (let ((_g44834_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44833_)
                                                      (##vector-length
                                                       _g44833_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44834_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44834_)))
                                         (let ((_%target4279942840%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44833_ 0)))
                                               (_%tl4280142843%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44833_ 1))))
                                           (if (gx#stx-null? _%tl4280142843%_)
                                               (letrec ((_%loop4280242846%_
                                                         (lambda (_%hd4280042850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4280642853%_)
                   (if (gx#stx-pair? _%hd4280042850%_)
                       (let ((_%e4280342856%_ (gx#syntax-e _%hd4280042850%_)))
                         (let ((_%lp-hd4280442860%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4280342856%_)))
                               (_%lp-tl4280542863%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4280342856%_))))
                           (_%loop4280242846%_
                            _%lp-tl4280542863%_
                            (cons _%lp-hd4280442860%_ _%id4280642853%_))))
                       (let ((_%id4280742866%_ (reverse _%id4280642853%_)))
                         ((lambda (_%L42870%_ _%L42872%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4288942892%_
                                                 _%g4289042895%_)
                                          (cons _%g4288942892%_
                                                _%g4289042895%_))
                                        '()
                                        _%L42870%_))
                                (let* ((_%keys42906%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4289742900%_
                                                         _%g4289842903%_)
                                                  (cons _%g4289742900%_
                                                        _%g4289842903%_))
                                                '()
                                                _%L42870%_)))
                                       (_%keytab42917%_
                                        (let ((_%ht42909%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4291142913%_)
                                             (hash-put!
                                              _%ht42909%_
                                              _%g4291142913%_
                                              '#t))
                                           _%keys42906%_)
                                          _%ht42909%_))
                                       (_%imports42920%_
                                        (gx#core-expand-import-source
                                         _%L42872%_))
                                       (_%fold-e42936%_
                                        (letrec ((_%fold-e42923%_
                                                  (lambda (_%in42926%_
                                                           _%r42928%_)
                                                    (if (gx#module-import?
                                                         _%in42926%_)
                                                        (let ()
                                                          (if (hash-get
                                                               _%keytab42917%_
                                                               (gx#module-import-name
                                                                _%in42926%_))
                                                              (cons _%in42926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%r42928%_)
                      _%r42928%_))
                (if (gx#import-set? _%in42926%_)
                    (let ()
                      (foldl _%fold-e42923%_
                             _%r42928%_
                             (gx#import-set-imports _%in42926%_)))
                    (let () _%r42928%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e42923%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e42936%_
                                               '()
                                               _%imports42920%_)))
                                (_%g4278942813%_ _%g4279042817%_)))
                          _%id4280742866%_
                          _%hd4279742834%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4280242846%_
                                                  _%target4279942840%_
                                                  '()))
                                               (_%g4278942813%_
                                                _%g4279042817%_)))))
                                     (_%g4278942813%_ _%g4279042817%_))))
                             (_%g4278942813%_ _%g4279042817%_))))
                     (_%g4278942813%_ _%g4279042817%_)))))
         (_%g4278842941%_ _%stx42786%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_%stx42946%_)
       (let* ((_%g4294942973%_
               (lambda (_%g4295042969%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4295042969%_)))
              (_%g4294843101%_
               (lambda (_%g4295042977%_)
                 (if (gx#stx-pair? _%g4295042977%_)
                     (let ((_%e4295542980%_ (gx#syntax-e _%g4295042977%_)))
                       (let ((_%hd4295442984%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4295542980%_)))
                             (_%tl4295342987%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4295542980%_))))
                         (if (gx#stx-pair? _%tl4295342987%_)
                             (let ((_%e4295842990%_
                                    (gx#syntax-e _%tl4295342987%_)))
                               (let ((_%hd4295742994%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4295842990%_)))
                                     (_%tl4295642997%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4295842990%_))))
                                 (if (gx#stx-pair/null? _%tl4295642997%_)
                                     (let ((_g44835_
                                            (gx#syntax-split-splice
                                             _%tl4295642997%_
                                             '0)))
                                       (begin
                                         (let ((_g44836_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44835_)
                                                      (##vector-length
                                                       _g44835_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44836_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44836_)))
                                         (let ((_%target4295943000%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44835_ 0)))
                                               (_%tl4296143003%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44835_ 1))))
                                           (if (gx#stx-null? _%tl4296143003%_)
                                               (letrec ((_%loop4296243006%_
                                                         (lambda (_%hd4296043010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4296643013%_)
                   (if (gx#stx-pair? _%hd4296043010%_)
                       (let ((_%e4296343016%_ (gx#syntax-e _%hd4296043010%_)))
                         (let ((_%lp-hd4296443020%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4296343016%_)))
                               (_%lp-tl4296543023%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4296343016%_))))
                           (_%loop4296243006%_
                            _%lp-tl4296543023%_
                            (cons _%lp-hd4296443020%_ _%id4296643013%_))))
                       (let ((_%id4296743026%_ (reverse _%id4296643013%_)))
                         ((lambda (_%L43030%_ _%L43032%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4304943052%_
                                                 _%g4305043055%_)
                                          (cons _%g4304943052%_
                                                _%g4305043055%_))
                                        '()
                                        _%L43030%_))
                                (let* ((_%keys43066%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4305743060%_
                                                         _%g4305843063%_)
                                                  (cons _%g4305743060%_
                                                        _%g4305843063%_))
                                                '()
                                                _%L43030%_)))
                                       (_%keytab43077%_
                                        (let ((_%ht43069%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4307143073%_)
                                             (hash-put!
                                              _%ht43069%_
                                              _%g4307143073%_
                                              '#t))
                                           _%keys43066%_)
                                          _%ht43069%_))
                                       (_%imports43080%_
                                        (gx#core-expand-import-source
                                         _%L43032%_))
                                       (_%fold-e43096%_
                                        (letrec ((_%fold-e43083%_
                                                  (lambda (_%in43086%_
                                                           _%r43088%_)
                                                    (if (gx#module-import?
                                                         _%in43086%_)
                                                        (let ()
                                                          (if (hash-get
                                                               _%keytab43077%_
                                                               (gx#module-import-name
                                                                _%in43086%_))
                                                              _%r43088%_
                                                              (cons _%in43086%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%r43088%_)))
                (if (gx#import-set? _%in43086%_)
                    (let ()
                      (foldl _%fold-e43083%_
                             _%r43088%_
                             (gx#import-set-imports _%in43086%_)))
                    (let () (cons _%in43086%_ _%r43088%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e43083%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e43096%_
                                               '()
                                               _%imports43080%_)))
                                (_%g4294942973%_ _%g4295042977%_)))
                          _%id4296743026%_
                          _%hd4295742994%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4296243006%_
                                                  _%target4295943000%_
                                                  '()))
                                               (_%g4294942973%_
                                                _%g4295042977%_)))))
                                     (_%g4294942973%_ _%g4295042977%_))))
                             (_%g4294942973%_ _%g4295042977%_))))
                     (_%g4294942973%_ _%g4295042977%_)))))
         (_%g4294843101%_ _%stx42946%_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_%in43153%_ _%rename43155%_)
      (gx#make-module-import
       (gx#module-import-source _%in43153%_)
       _%rename43155%_
       (gx#module-import-phi _%in43153%_)
       (gx#module-import-weak? _%in43153%_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_%name43106%_ _%pre43108%_)
      (let* ((_%name4310943117%_ _%name43106%_)
             (_%else4311143129%_
              (lambda () (make-symbol _%pre43108%_ _%name43106%_)))
             (_%K4311343137%_
              (lambda (_%mark43133%_ _%id43135%_)
                (cons (make-symbol _%pre43108%_ _%id43135%_) _%mark43133%_))))
        (if (let () (declare (not safe)) (##pair? _%name4310943117%_))
            (let ((_%hd4311443141%_
                   (let () (declare (not safe)) (##car _%name4310943117%_)))
                  (_%tl4311543144%_
                   (let () (declare (not safe)) (##cdr _%name4310943117%_))))
              (let* ((_%id43147%_ _%hd4311443141%_)
                     (_%mark43150%_ _%tl4311543144%_))
                (declare (not safe))
                (_%K4311343137%_ _%mark43150%_ _%id43147%_)))
            (let () (declare (not safe)) (_%else4311143129%_))))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_%stx43157%_)
       (let* ((_%g4316043193%_
               (lambda (_%g4316143189%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4316143189%_)))
              (_%g4315943388%_
               (lambda (_%g4316143197%_)
                 (if (gx#stx-pair? _%g4316143197%_)
                     (let ((_%e4316743200%_ (gx#syntax-e _%g4316143197%_)))
                       (let ((_%hd4316643204%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4316743200%_)))
                             (_%tl4316543207%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4316743200%_))))
                         (if (gx#stx-pair? _%tl4316543207%_)
                             (let ((_%e4317043210%_
                                    (gx#syntax-e _%tl4316543207%_)))
                               (let ((_%hd4316943214%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4317043210%_)))
                                     (_%tl4316843217%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4317043210%_))))
                                 (if (gx#stx-pair/null? _%tl4316843217%_)
                                     (let ((_g44837_
                                            (gx#syntax-split-splice
                                             _%tl4316843217%_
                                             '0)))
                                       (begin
                                         (let ((_g44838_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44837_)
                                                      (##vector-length
                                                       _g44837_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44838_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44838_)))
                                         (let ((_%target4317143220%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44837_ 0)))
                                               (_%tl4317343223%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44837_ 1))))
                                           (if (gx#stx-null? _%tl4317343223%_)
                                               (letrec ((_%loop4317443226%_
                                                         (lambda (_%hd4317243230%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4317843233%_
                          _%id4317943235%_)
                   (if (gx#stx-pair? _%hd4317243230%_)
                       (let ((_%e4317543238%_ (gx#syntax-e _%hd4317243230%_)))
                         (let ((_%lp-hd4317643242%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4317543238%_)))
                               (_%lp-tl4317743245%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4317543238%_))))
                           (if (gx#stx-pair? _%lp-hd4317643242%_)
                               (let ((_%e4318443248%_
                                      (gx#syntax-e _%lp-hd4317643242%_)))
                                 (let ((_%hd4318343252%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4318443248%_)))
                                       (_%tl4318243255%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4318443248%_))))
                                   (if (gx#stx-pair? _%tl4318243255%_)
                                       (let ((_%e4318743258%_
                                              (gx#syntax-e _%tl4318243255%_)))
                                         (let ((_%hd4318643262%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4318743258%_)))
                                               (_%tl4318543265%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4318743258%_))))
                                           (if (gx#stx-null? _%tl4318543265%_)
                                               (_%loop4317443226%_
                                                _%lp-tl4317743245%_
                                                (cons _%hd4318643262%_
                                                      _%new-id4317843233%_)
                                                (cons _%hd4318343252%_
                                                      _%id4317943235%_))
                                               (_%g4316043193%_
                                                _%g4316143197%_))))
                                       (_%g4316043193%_ _%g4316143197%_))))
                               (_%g4316043193%_ _%g4316143197%_))))
                       (let ((_%new-id4318043268%_
                              (reverse _%new-id4317843233%_))
                             (_%id4318143271%_ (reverse _%id4317943235%_)))
                         ((lambda (_%L43274%_ _%L43276%_ _%L43277%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4329543298%_
                                                      _%g4329643301%_)
                                               (cons _%g4329543298%_
                                                     _%g4329643301%_))
                                             '()
                                             _%L43276%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4330343306%_
                                                      _%g4330443309%_)
                                               (cons _%g4330343306%_
                                                     _%g4330443309%_))
                                             '()
                                             _%L43274%_)))
                                (let* ((_%keytab43312%_ (make-hash-table))
                                       (_%found43315%_ (make-hash-table))
                                       (_%_43338%_
                                        (for-each
                                         (lambda (_%id43318%_ _%new-id43320%_)
                                           (hash-put!
                                            _%keytab43312%_
                                            (gx#core-identifier-key
                                             _%id43318%_)
                                            (gx#core-identifier-key
                                             _%new-id43320%_)))
                                         (foldr (lambda (_%g4332143324%_
                                                         _%g4332243327%_)
                                                  (cons _%g4332143324%_
                                                        _%g4332243327%_))
                                                '()
                                                _%L43276%_)
                                         (foldr (lambda (_%g4332943332%_
                                                         _%g4333043335%_)
                                                  (cons _%g4332943332%_
                                                        _%g4333043335%_))
                                                '()
                                                _%L43274%_)))
                                       (_%imports43341%_
                                        (gx#core-expand-import-source
                                         _%L43277%_))
                                       (_%fold-e43369%_
                                        (letrec ((_%fold-e43344%_
                                                  (lambda (_%in43347%_
                                                           _%r43349%_)
                                                    (if (gx#module-import?
                                                         _%in43347%_)
                                                        (let ()
                                                          (let* ((_%name43353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#module-import-name _%in43347%_))
                         (_%$e43356%_
                          (hash-get _%keytab43312%_ _%name43353%_)))
                    (if _%$e43356%_
                        ((lambda (_%rename43360%_)
                           (hash-put! _%found43315%_ _%name43353%_ '#t)
                           (cons (let ()
                                   (declare (not safe))
                                   (|gerbil/core/module-sugar[1]#module-import-rename|
                                    _%in43347%_
                                    _%rename43360%_))
                                 _%r43349%_))
                         _%$e43356%_)
                        (let () (cons _%in43347%_ _%r43349%_)))))
                (if (gx#import-set? _%in43347%_)
                    (let ()
                      (foldl _%fold-e43344%_
                             _%r43349%_
                             (gx#import-set-imports _%in43347%_)))
                    (let () (cons _%in43347%_ _%r43349%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e43344%_))
                                       (_%new-imports43372%_
                                        (foldl _%fold-e43369%_
                                               '()
                                               _%imports43341%_)))
                                  (for-each
                                   (lambda (_%id43377%_)
                                     (if (hash-get
                                          _%found43315%_
                                          (gx#core-identifier-key _%id43377%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _%stx43157%_
                                          _%id43377%_)))
                                   (foldr (lambda (_%g4337943382%_
                                                   _%g4338043385%_)
                                            (cons _%g4337943382%_
                                                  _%g4338043385%_))
                                          '()
                                          _%L43276%_))
                                  (cons 'begin: _%new-imports43372%_))
                                (_%g4316043193%_ _%g4316143197%_)))
                          _%new-id4318043268%_
                          _%id4318143271%_
                          _%hd4316943214%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4317443226%_
                                                  _%target4317143220%_
                                                  '()
                                                  '()))
                                               (_%g4316043193%_
                                                _%g4316143197%_)))))
                                     (_%g4316043193%_ _%g4316143197%_))))
                             (_%g4316043193%_ _%g4316143197%_))))
                     (_%g4316043193%_ _%g4316143197%_)))))
         (_%g4315943388%_ _%stx43157%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_%stx43393%_)
       (let* ((_%g4339643414%_
               (lambda (_%g4339743410%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4339743410%_)))
              (_%g4339543499%_
               (lambda (_%g4339743418%_)
                 (if (gx#stx-pair? _%g4339743418%_)
                     (let ((_%e4340243421%_ (gx#syntax-e _%g4339743418%_)))
                       (let ((_%hd4340143425%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4340243421%_)))
                             (_%tl4340043428%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4340243421%_))))
                         (if (gx#stx-pair? _%tl4340043428%_)
                             (let ((_%e4340543431%_
                                    (gx#syntax-e _%tl4340043428%_)))
                               (let ((_%hd4340443435%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4340543431%_)))
                                     (_%tl4340343438%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4340543431%_))))
                                 (if (gx#stx-pair? _%tl4340343438%_)
                                     (let ((_%e4340843441%_
                                            (gx#syntax-e _%tl4340343438%_)))
                                       (let ((_%hd4340743445%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4340843441%_)))
                                             (_%tl4340643448%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4340843441%_))))
                                         (if (gx#stx-null? _%tl4340643448%_)
                                             ((lambda (_%L43451%_ _%L43453%_)
                                                (if (gx#identifier? _%L43451%_)
                                                    (let* ((_%pre43469%_
                                                            (gx#stx-e
                                                             _%L43451%_))
                                                           (_%imports43472%_
                                                            (gx#core-expand-import-source
                                                             _%L43453%_))
                                                           (_%rename-e43478%_
                                                            (lambda (_%name43475%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                         _%name43475%_
                         _%pre43469%_))))
                   (_%fold-e43494%_
                    (letrec ((_%fold-e43481%_
                              (lambda (_%in43484%_ _%r43486%_)
                                (if (gx#module-import? _%in43484%_)
                                    (let ()
                                      (cons (let ((__tmp44839
                                                   (_%rename-e43478%_
                                                    (gx#module-import-name
                                                     _%in43484%_))))
                                              (declare (not safe))
                                              (|gerbil/core/module-sugar[1]#module-import-rename|
                                               _%in43484%_
                                               __tmp44839))
                                            _%r43486%_))
                                    (if (gx#import-set? _%in43484%_)
                                        (let ()
                                          (foldl _%fold-e43481%_
                                                 _%r43486%_
                                                 (gx#import-set-imports
                                                  _%in43484%_)))
                                        (let ()
                                          (cons _%in43484%_ _%r43486%_)))))))
                      _%fold-e43481%_)))
              (cons 'begin: (foldl _%fold-e43494%_ '() _%imports43472%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4339643414%_
                                                     _%g4339743418%_)))
                                              _%hd4340743445%_
                                              _%hd4340443435%_)
                                             (_%g4339643414%_
                                              _%g4339743418%_))))
                                     (_%g4339643414%_ _%g4339743418%_))))
                             (_%g4339643414%_ _%g4339743418%_))))
                     (_%g4339643414%_ _%g4339743418%_)))))
         (_%g4339543499%_ _%stx43393%_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_%stx43503%_)
       (letrec ((_%flatten43506%_
                 (lambda (_%list-of-lists43761%_)
                   (foldr (lambda (_%v43764%_ _%acc43766%_)
                            (if (let ()
                                  (declare (not safe))
                                  (null? _%v43764%_))
                                (let () _%acc43766%_)
                                (if (let ()
                                      (declare (not safe))
                                      (pair? _%v43764%_))
                                    (let ()
                                      (append (_%flatten43506%_ _%v43764%_)
                                              _%acc43766%_))
                                    (let () (cons _%v43764%_ _%acc43766%_)))))
                          '()
                          _%list-of-lists43761%_)))
                (_%expand-path43508%_
                 (lambda (_%top43629%_ _%mod43631%_)
                   (let* ((_%__stx4473744738%_ _%mod43631%_)
                          (_%g4363443656%_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%__stx4473744738%_))))
                     (let ((_%__kont4474044741%_
                            (lambda (_%L43724%_ _%L43726%_)
                              (map (lambda (_%mod43741%_)
                                     (gx#stx-identifier
                                      _%top43629%_
                                      _%top43629%_
                                      '"/"
                                      _%mod43741%_))
                                   (_%flatten43506%_
                                    (map (lambda (_%g4374343745%_)
                                           (_%expand-path43508%_
                                            _%L43726%_
                                            _%g4374343745%_))
                                         (foldr (lambda (_%g4374843751%_
                                                         _%g4374943754%_)
                                                  (cons _%g4374843751%_
                                                        _%g4374943754%_))
                                                '()
                                                _%L43724%_))))))
                           (_%__kont4474444745%_
                            (lambda (_%L43663%_)
                              (gx#stx-identifier
                               _%top43629%_
                               _%top43629%_
                               '"/"
                               _%L43663%_))))
                       (let* ((_%g4363343677%_
                               (lambda ()
                                 (let ((_%L43663%_ _%__stx4473744738%_))
                                   (if (or (gx#identifier? _%L43663%_)
                                           (gx#stx-fixnum? _%L43663%_))
                                       (_%__kont4474444745%_ _%L43663%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4363443656%_))))))
                              (_%__match4476044761%_
                               (lambda (_%e4364043684%_
                                        _%hd4363943688%_
                                        _%tl4363843691%_
                                        _%__splice4474244743%_
                                        _%target4364143694%_
                                        _%tl4364343697%_)
                                 (letrec ((_%loop4364443700%_
                                           (lambda (_%hd4364243704%_
                                                    _%mod4364843707%_)
                                             (if (gx#stx-pair?
                                                  _%hd4364243704%_)
                                                 (let ((_%e4364543710%_
                                                        (gx#syntax-e
                                                         _%hd4364243704%_)))
                                                   (let ((_%lp-tl4364743717%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4364543710%_)))
                                                         (_%lp-hd4364643714%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4364543710%_))))
                                                     (_%loop4364443700%_
                                                      _%lp-tl4364743717%_
                                                      (cons _%lp-hd4364643714%_
                                                            _%mod4364843707%_))))
                                                 (let ((_%mod4364943720%_
                                                        (reverse _%mod4364843707%_)))
                                                   (_%__kont4474044741%_
                                                    _%mod4364943720%_
                                                    _%hd4363943688%_))))))
                                   (_%loop4364443700%_
                                    _%target4364143694%_
                                    '())))))
                         (if (gx#stx-pair? _%__stx4473744738%_)
                             (let ((_%e4364043684%_
                                    (gx#syntax-e _%__stx4473744738%_)))
                               (let ((_%tl4363843691%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4364043684%_)))
                                     (_%hd4363943688%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4364043684%_))))
                                 (if (gx#stx-pair/null? _%tl4363843691%_)
                                     (let ((_%__splice4474244743%_
                                            (gx#syntax-split-splice
                                             _%tl4363843691%_
                                             '0)))
                                       (let ((_%tl4364343697%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4474244743%_
                                                 '1)))
                                             (_%target4364143694%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4474244743%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4364343697%_)
                                             (_%__match4476044761%_
                                              _%e4364043684%_
                                              _%hd4363943688%_
                                              _%tl4363843691%_
                                              _%__splice4474244743%_
                                              _%target4364143694%_
                                              _%tl4364343697%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4363343677%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4363343677%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4363343677%_)))))))))
         (let* ((_%g4351043534%_
                 (lambda (_%g4351143530%_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%g4351143530%_)))
                (_%g4350943625%_
                 (lambda (_%g4351143538%_)
                   (if (gx#stx-pair? _%g4351143538%_)
                       (let ((_%e4351643541%_ (gx#syntax-e _%g4351143538%_)))
                         (let ((_%hd4351543545%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4351643541%_)))
                               (_%tl4351443548%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4351643541%_))))
                           (if (gx#stx-pair? _%tl4351443548%_)
                               (let ((_%e4351943551%_
                                      (gx#syntax-e _%tl4351443548%_)))
                                 (let ((_%hd4351843555%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4351943551%_)))
                                       (_%tl4351743558%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4351943551%_))))
                                   (if (gx#stx-pair/null? _%tl4351743558%_)
                                       (let ((_g44840_
                                              (gx#syntax-split-splice
                                               _%tl4351743558%_
                                               '0)))
                                         (begin
                                           (let ((_g44841_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g44840_)
                                                        (##vector-length
                                                         _g44840_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g44841_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g44841_)))
                                           (let ((_%target4352043561%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g44840_ 0)))
                                                 (_%tl4352243564%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g44840_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl4352243564%_)
                                                 (letrec ((_%loop4352343567%_
                                                           (lambda (_%hd4352143571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%mod4352743574%_)
                     (if (gx#stx-pair? _%hd4352143571%_)
                         (let ((_%e4352443577%_
                                (gx#syntax-e _%hd4352143571%_)))
                           (let ((_%lp-hd4352543581%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4352443577%_)))
                                 (_%lp-tl4352643584%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4352443577%_))))
                             (_%loop4352343567%_
                              _%lp-tl4352643584%_
                              (cons _%lp-hd4352543581%_ _%mod4352743574%_))))
                         (let ((_%mod4352843587%_ (reverse _%mod4352743574%_)))
                           ((lambda (_%L43591%_ _%L43593%_)
                              (cons 'begin:
                                    (_%flatten43506%_
                                     (map (lambda (_%g4361143613%_)
                                            (_%expand-path43508%_
                                             _%L43593%_
                                             _%g4361143613%_))
                                          (foldr (lambda (_%g4361643619%_
                                                          _%g4361743622%_)
                                                   (cons _%g4361643619%_
                                                         _%g4361743622%_))
                                                 '()
                                                 _%L43591%_)))))
                            _%mod4352843587%_
                            _%hd4351843555%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop4352343567%_
                                                    _%target4352043561%_
                                                    '()))
                                                 (_%g4351043534%_
                                                  _%g4351143538%_)))))
                                       (_%g4351043534%_ _%g4351143538%_))))
                               (_%g4351043534%_ _%g4351143538%_))))
                       (_%g4351043534%_ _%g4351143538%_)))))
           (_%g4350943625%_ _%stx43503%_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_%stx43776%_)
       (let* ((_%g4377943803%_
               (lambda (_%g4378043799%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4378043799%_)))
              (_%g4377843931%_
               (lambda (_%g4378043807%_)
                 (if (gx#stx-pair? _%g4378043807%_)
                     (let ((_%e4378543810%_ (gx#syntax-e _%g4378043807%_)))
                       (let ((_%hd4378443814%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4378543810%_)))
                             (_%tl4378343817%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4378543810%_))))
                         (if (gx#stx-pair? _%tl4378343817%_)
                             (let ((_%e4378843820%_
                                    (gx#syntax-e _%tl4378343817%_)))
                               (let ((_%hd4378743824%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4378843820%_)))
                                     (_%tl4378643827%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4378843820%_))))
                                 (if (gx#stx-pair/null? _%tl4378643827%_)
                                     (let ((_g44842_
                                            (gx#syntax-split-splice
                                             _%tl4378643827%_
                                             '0)))
                                       (begin
                                         (let ((_g44843_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44842_)
                                                      (##vector-length
                                                       _g44842_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44843_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44843_)))
                                         (let ((_%target4378943830%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44842_ 0)))
                                               (_%tl4379143833%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44842_ 1))))
                                           (if (gx#stx-null? _%tl4379143833%_)
                                               (letrec ((_%loop4379243836%_
                                                         (lambda (_%hd4379043840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4379643843%_)
                   (if (gx#stx-pair? _%hd4379043840%_)
                       (let ((_%e4379343846%_ (gx#syntax-e _%hd4379043840%_)))
                         (let ((_%lp-hd4379443850%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4379343846%_)))
                               (_%lp-tl4379543853%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4379343846%_))))
                           (_%loop4379243836%_
                            _%lp-tl4379543853%_
                            (cons _%lp-hd4379443850%_ _%id4379643843%_))))
                       (let ((_%id4379743856%_ (reverse _%id4379643843%_)))
                         ((lambda (_%L43860%_ _%L43862%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4387943882%_
                                                 _%g4388043885%_)
                                          (cons _%g4387943882%_
                                                _%g4388043885%_))
                                        '()
                                        _%L43860%_))
                                (let* ((_%keys43896%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4388743890%_
                                                         _%g4388843893%_)
                                                  (cons _%g4388743890%_
                                                        _%g4388843893%_))
                                                '()
                                                _%L43860%_)))
                                       (_%keytab43907%_
                                        (let ((_%ht43899%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4390143903%_)
                                             (hash-put!
                                              _%ht43899%_
                                              _%g4390143903%_
                                              '#t))
                                           _%keys43896%_)
                                          _%ht43899%_))
                                       (_%exports43910%_
                                        (gx#core-expand-export-source
                                         _%L43862%_))
                                       (_%fold-e43926%_
                                        (letrec ((_%fold-e43913%_
                                                  (lambda (_%out43916%_
                                                           _%r43918%_)
                                                    (if (gx#module-export?
                                                         _%out43916%_)
                                                        (let ()
                                                          (if (hash-get
                                                               _%keytab43907%_
                                                               (gx#module-export-name
                                                                _%out43916%_))
                                                              _%r43918%_
                                                              (cons _%out43916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%r43918%_)))
                (if (gx#export-set? _%out43916%_)
                    (let ()
                      (foldl _%fold-e43913%_
                             _%r43918%_
                             (gx#export-set-exports _%out43916%_)))
                    (let () _%r43918%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e43913%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e43926%_
                                               '()
                                               _%exports43910%_)))
                                (_%g4377943803%_ _%g4378043807%_)))
                          _%id4379743856%_
                          _%hd4378743824%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4379243836%_
                                                  _%target4378943830%_
                                                  '()))
                                               (_%g4377943803%_
                                                _%g4378043807%_)))))
                                     (_%g4377943803%_ _%g4378043807%_))))
                             (_%g4377943803%_ _%g4378043807%_))))
                     (_%g4377943803%_ _%g4378043807%_)))))
         (_%g4377843931%_ _%stx43776%_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_%out43936%_ _%rename43938%_)
      (gx#make-module-export
       (gx#module-export-context _%out43936%_)
       (gx#module-export-key _%out43936%_)
       (gx#module-export-phi _%out43936%_)
       _%rename43938%_
       (gx#module-export-weak? _%out43936%_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_%stx43940%_)
       (let* ((_%g4394343976%_
               (lambda (_%g4394443972%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4394443972%_)))
              (_%g4394244171%_
               (lambda (_%g4394443980%_)
                 (if (gx#stx-pair? _%g4394443980%_)
                     (let ((_%e4395043983%_ (gx#syntax-e _%g4394443980%_)))
                       (let ((_%hd4394943987%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4395043983%_)))
                             (_%tl4394843990%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4395043983%_))))
                         (if (gx#stx-pair? _%tl4394843990%_)
                             (let ((_%e4395343993%_
                                    (gx#syntax-e _%tl4394843990%_)))
                               (let ((_%hd4395243997%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4395343993%_)))
                                     (_%tl4395144000%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4395343993%_))))
                                 (if (gx#stx-pair/null? _%tl4395144000%_)
                                     (let ((_g44844_
                                            (gx#syntax-split-splice
                                             _%tl4395144000%_
                                             '0)))
                                       (begin
                                         (let ((_g44845_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44844_)
                                                      (##vector-length
                                                       _g44844_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44845_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44845_)))
                                         (let ((_%target4395444003%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44844_ 0)))
                                               (_%tl4395644006%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44844_ 1))))
                                           (if (gx#stx-null? _%tl4395644006%_)
                                               (letrec ((_%loop4395744009%_
                                                         (lambda (_%hd4395544013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4396144016%_
                          _%id4396244018%_)
                   (if (gx#stx-pair? _%hd4395544013%_)
                       (let ((_%e4395844021%_ (gx#syntax-e _%hd4395544013%_)))
                         (let ((_%lp-hd4395944025%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4395844021%_)))
                               (_%lp-tl4396044028%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4395844021%_))))
                           (if (gx#stx-pair? _%lp-hd4395944025%_)
                               (let ((_%e4396744031%_
                                      (gx#syntax-e _%lp-hd4395944025%_)))
                                 (let ((_%hd4396644035%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4396744031%_)))
                                       (_%tl4396544038%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4396744031%_))))
                                   (if (gx#stx-pair? _%tl4396544038%_)
                                       (let ((_%e4397044041%_
                                              (gx#syntax-e _%tl4396544038%_)))
                                         (let ((_%hd4396944045%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4397044041%_)))
                                               (_%tl4396844048%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4397044041%_))))
                                           (if (gx#stx-null? _%tl4396844048%_)
                                               (_%loop4395744009%_
                                                _%lp-tl4396044028%_
                                                (cons _%hd4396944045%_
                                                      _%new-id4396144016%_)
                                                (cons _%hd4396644035%_
                                                      _%id4396244018%_))
                                               (_%g4394343976%_
                                                _%g4394443980%_))))
                                       (_%g4394343976%_ _%g4394443980%_))))
                               (_%g4394343976%_ _%g4394443980%_))))
                       (let ((_%new-id4396344051%_
                              (reverse _%new-id4396144016%_))
                             (_%id4396444054%_ (reverse _%id4396244018%_)))
                         ((lambda (_%L44057%_ _%L44059%_ _%L44060%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4407844081%_
                                                      _%g4407944084%_)
                                               (cons _%g4407844081%_
                                                     _%g4407944084%_))
                                             '()
                                             _%L44059%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4408644089%_
                                                      _%g4408744092%_)
                                               (cons _%g4408644089%_
                                                     _%g4408744092%_))
                                             '()
                                             _%L44057%_)))
                                (let* ((_%keytab44095%_ (make-hash-table))
                                       (_%found44098%_ (make-hash-table))
                                       (_%_44121%_
                                        (for-each
                                         (lambda (_%id44101%_ _%new-id44103%_)
                                           (hash-put!
                                            _%keytab44095%_
                                            (gx#core-identifier-key
                                             _%id44101%_)
                                            (gx#core-identifier-key
                                             _%new-id44103%_)))
                                         (foldr (lambda (_%g4410444107%_
                                                         _%g4410544110%_)
                                                  (cons _%g4410444107%_
                                                        _%g4410544110%_))
                                                '()
                                                _%L44059%_)
                                         (foldr (lambda (_%g4411244115%_
                                                         _%g4411344118%_)
                                                  (cons _%g4411244115%_
                                                        _%g4411344118%_))
                                                '()
                                                _%L44057%_)))
                                       (_%exports44124%_
                                        (gx#core-expand-export-source
                                         _%L44060%_))
                                       (_%fold-e44152%_
                                        (letrec ((_%fold-e44127%_
                                                  (lambda (_%out44130%_
                                                           _%r44132%_)
                                                    (if (gx#module-export?
                                                         _%out44130%_)
                                                        (let ()
                                                          (let* ((_%name44136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#module-export-name _%out44130%_))
                         (_%$e44139%_
                          (hash-get _%keytab44095%_ _%name44136%_)))
                    (if _%$e44139%_
                        ((lambda (_%rename44143%_)
                           (hash-put! _%found44098%_ _%name44136%_ '#t)
                           (cons (let ()
                                   (declare (not safe))
                                   (|gerbil/core/module-sugar[1]#module-export-rename|
                                    _%out44130%_
                                    _%rename44143%_))
                                 _%r44132%_))
                         _%$e44139%_)
                        (let () (cons _%out44130%_ _%r44132%_)))))
                (if (gx#export-set? _%out44130%_)
                    (let ()
                      (foldl _%fold-e44127%_
                             _%r44132%_
                             (gx#export-set-exports _%out44130%_)))
                    (let () (cons _%out44130%_ _%r44132%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e44127%_))
                                       (_%new-exports44155%_
                                        (foldl _%fold-e44152%_
                                               '()
                                               _%exports44124%_)))
                                  (for-each
                                   (lambda (_%id44160%_)
                                     (if (hash-get
                                          _%found44098%_
                                          (gx#core-identifier-key _%id44160%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _%stx43940%_
                                          _%id44160%_)))
                                   (foldr (lambda (_%g4416244165%_
                                                   _%g4416344168%_)
                                            (cons _%g4416244165%_
                                                  _%g4416344168%_))
                                          '()
                                          _%L44059%_))
                                  (cons 'begin: _%new-exports44155%_))
                                (_%g4394343976%_ _%g4394443980%_)))
                          _%new-id4396344051%_
                          _%id4396444054%_
                          _%hd4395243997%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4395744009%_
                                                  _%target4395444003%_
                                                  '()
                                                  '()))
                                               (_%g4394343976%_
                                                _%g4394443980%_)))))
                                     (_%g4394343976%_ _%g4394443980%_))))
                             (_%g4394343976%_ _%g4394443980%_))))
                     (_%g4394343976%_ _%g4394443980%_)))))
         (_%g4394244171%_ _%stx43940%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_%stx44176%_)
       (let* ((_%g4417944197%_
               (lambda (_%g4418044193%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4418044193%_)))
              (_%g4417844282%_
               (lambda (_%g4418044201%_)
                 (if (gx#stx-pair? _%g4418044201%_)
                     (let ((_%e4418544204%_ (gx#syntax-e _%g4418044201%_)))
                       (let ((_%hd4418444208%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4418544204%_)))
                             (_%tl4418344211%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4418544204%_))))
                         (if (gx#stx-pair? _%tl4418344211%_)
                             (let ((_%e4418844214%_
                                    (gx#syntax-e _%tl4418344211%_)))
                               (let ((_%hd4418744218%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4418844214%_)))
                                     (_%tl4418644221%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4418844214%_))))
                                 (if (gx#stx-pair? _%tl4418644221%_)
                                     (let ((_%e4419144224%_
                                            (gx#syntax-e _%tl4418644221%_)))
                                       (let ((_%hd4419044228%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4419144224%_)))
                                             (_%tl4418944231%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4419144224%_))))
                                         (if (gx#stx-null? _%tl4418944231%_)
                                             ((lambda (_%L44234%_ _%L44236%_)
                                                (if (gx#identifier? _%L44234%_)
                                                    (let* ((_%pre44252%_
                                                            (gx#stx-e
                                                             _%L44234%_))
                                                           (_%exports44255%_
                                                            (gx#core-expand-export-source
                                                             _%L44236%_))
                                                           (_%rename-e44261%_
                                                            (lambda (_%name44258%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                         _%name44258%_
                         _%pre44252%_))))
                   (_%fold-e44277%_
                    (letrec ((_%fold-e44264%_
                              (lambda (_%out44267%_ _%r44269%_)
                                (if (gx#module-export? _%out44267%_)
                                    (let ()
                                      (cons (let ((__tmp44846
                                                   (_%rename-e44261%_
                                                    (gx#module-export-name
                                                     _%out44267%_))))
                                              (declare (not safe))
                                              (|gerbil/core/module-sugar[1]#module-export-rename|
                                               _%out44267%_
                                               __tmp44846))
                                            _%r44269%_))
                                    (if (gx#export-set? _%out44267%_)
                                        (let ()
                                          (foldl _%fold-e44264%_
                                                 _%r44269%_
                                                 (gx#export-set-exports
                                                  _%out44267%_)))
                                        (let ()
                                          (cons _%out44267%_ _%r44269%_)))))))
                      _%fold-e44264%_)))
              (cons 'begin: (foldl _%fold-e44277%_ '() _%exports44255%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4417944197%_
                                                     _%g4418044201%_)))
                                              _%hd4419044228%_
                                              _%hd4418744218%_)
                                             (_%g4417944197%_
                                              _%g4418044201%_))))
                                     (_%g4417944197%_ _%g4418044201%_))))
                             (_%g4417944197%_ _%g4418044201%_))))
                     (_%g4417944197%_ _%g4418044201%_)))))
         (_%g4417844282%_ _%stx44176%_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_%stx44286%_)
       (letrec ((_%identifiers44289%_
                 (lambda (_%id44521%_ _%unchecked?44523%_)
                   (let ((_%info44525%_
                          (gx#syntax-local-value _%id44521%_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%info44525%_))
                         (cons _%id44521%_
                               (cons (let ((__obj44822 _%info44525%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj44822
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj44822
                                              '12
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj44822
                                            'type-descriptor)))
                                     (foldr cons
                                            (cons (let ((__obj44823
                                                         _%info44525%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj44823
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj44823
                                                           '14
                                                           '#f
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core/mop~MOP-2#class-type-info::t
                                                         __obj44823
                                                         'predicate)))
                                                  (foldr cons
                                                         (foldr cons
                                                                (if _%unchecked?44523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons
                                   (map cdr
                                        (let ((__obj44824 _%info44525%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj44824
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj44824
                                                 '18
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj44824
                                               'unchecked-mutators))))
                                   (map cdr
                                        (let ((__obj44825 _%info44525%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj44825
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj44825
                                                 '17
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj44825
                                               'unchecked-accessors)))))
                            '())
                        (map cdr
                             (let ((__obj44826 _%info44525%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj44826
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj44826
                                      '16
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj44826
                                    'mutators)))))
                 (map cdr
                      (let ((__obj44827 _%info44525%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj44827
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj44827
                               '15
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj44827
                             'accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_%ctor44528%_
                                                   (let ((__obj44828
                                                          _%info44525%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj44828
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj44828
                                                            '13
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj44828
                                                          'constructor)))))
                                              (if _%ctor44528%_
                                                  (cons _%ctor44528%_ '())
                                                  '())))))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _%stx44286%_
                          _%id44521%_))))))
         (let* ((_%__stx4476344764%_ _%stx44286%_)
                (_%g4429344334%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%__stx4476344764%_))))
           (let ((_%__kont4476644767%_
                  (lambda (_%L44482%_ _%L44484%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4450344505%_)
                              (_%identifiers44289%_
                               _%g4450344505%_
                               (gx#stx-e _%L44484%_)))
                            (foldr (lambda (_%g4450844511%_ _%g4450944514%_)
                                     (cons _%g4450844511%_ _%g4450944514%_))
                                   '()
                                   _%L44482%_))))))
                 (_%__kont4477044771%_
                  (lambda (_%L44381%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4439744399%_)
                              (_%identifiers44289%_ _%g4439744399%_ '#f))
                            (foldr (lambda (_%g4440244405%_ _%g4440344408%_)
                                     (cons _%g4440244405%_ _%g4440344408%_))
                                   '()
                                   _%L44381%_)))))))
             (let* ((_%__match4482044821%_
                     (lambda (_%e4431944341%_
                              _%hd4431844345%_
                              _%tl4431744348%_
                              _%__splice4477244773%_
                              _%target4432044351%_
                              _%tl4432244354%_)
                       (letrec ((_%loop4432344357%_
                                 (lambda (_%hd4432144361%_ _%id4432744364%_)
                                   (if (gx#stx-pair? _%hd4432144361%_)
                                       (let ((_%e4432444367%_
                                              (gx#syntax-e _%hd4432144361%_)))
                                         (let ((_%lp-tl4432644374%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4432444367%_)))
                                               (_%lp-hd4432544371%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4432444367%_))))
                                           (_%loop4432344357%_
                                            _%lp-tl4432644374%_
                                            (cons _%lp-hd4432544371%_
                                                  _%id4432744364%_))))
                                       (let ((_%id4432844377%_
                                              (reverse _%id4432744364%_)))
                                         (_%__kont4477044771%_
                                          _%id4432844377%_))))))
                         (_%loop4432344357%_ _%target4432044351%_ '()))))
                    (_%__match4480644807%_
                     (lambda (_%e4429944418%_
                              _%hd4429844422%_
                              _%tl4429744425%_
                              _%e4430244428%_
                              _%hd4430144432%_
                              _%tl4430044435%_
                              _%e4430344438%_
                              _%e4430644442%_
                              _%hd4430544446%_
                              _%tl4430444449%_
                              _%__splice4476844769%_
                              _%target4430744452%_
                              _%tl4430944455%_)
                       (letrec ((_%loop4431044458%_
                                 (lambda (_%hd4430844462%_ _%id4431444465%_)
                                   (if (gx#stx-pair? _%hd4430844462%_)
                                       (let ((_%e4431144468%_
                                              (gx#syntax-e _%hd4430844462%_)))
                                         (let ((_%lp-tl4431344475%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4431144468%_)))
                                               (_%lp-hd4431244472%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4431144468%_))))
                                           (_%loop4431044458%_
                                            _%lp-tl4431344475%_
                                            (cons _%lp-hd4431244472%_
                                                  _%id4431444465%_))))
                                       (let ((_%id4431544478%_
                                              (reverse _%id4431444465%_)))
                                         (_%__kont4476644767%_
                                          _%id4431544478%_
                                          _%hd4430544446%_))))))
                         (_%loop4431044458%_ _%target4430744452%_ '())))))
               (if (gx#stx-pair? _%__stx4476344764%_)
                   (let ((_%e4429944418%_ (gx#syntax-e _%__stx4476344764%_)))
                     (let ((_%tl4429744425%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4429944418%_)))
                           (_%hd4429844422%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4429944418%_))))
                       (if (gx#stx-pair? _%tl4429744425%_)
                           (let ((_%e4430244428%_
                                  (gx#syntax-e _%tl4429744425%_)))
                             (let ((_%tl4430044435%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4430244428%_)))
                                   (_%hd4430144432%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4430244428%_))))
                               (if (gx#stx-datum? _%hd4430144432%_)
                                   (let ((_%e4430344438%_
                                          (gx#stx-e _%hd4430144432%_)))
                                     (if (equal? _%e4430344438%_ 'unchecked:)
                                         (if (gx#stx-pair? _%tl4430044435%_)
                                             (let ((_%e4430644442%_
                                                    (gx#syntax-e
                                                     _%tl4430044435%_)))
                                               (let ((_%tl4430444449%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4430644442%_)))
                                                     (_%hd4430544446%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4430644442%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%tl4430444449%_)
                                                     (let ((_%__splice4476844769%_
                                                            (gx#syntax-split-splice
                                                             _%tl4430444449%_
                                                             '0)))
                                                       (let ((_%tl4430944455%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4476844769%_ '1)))
                     (_%target4430744452%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4476844769%_ '0))))
                 (if (gx#stx-null? _%tl4430944455%_)
                     (_%__match4480644807%_
                      _%e4429944418%_
                      _%hd4429844422%_
                      _%tl4429744425%_
                      _%e4430244428%_
                      _%hd4430144432%_
                      _%tl4430044435%_
                      _%e4430344438%_
                      _%e4430644442%_
                      _%hd4430544446%_
                      _%tl4430444449%_
                      _%__splice4476844769%_
                      _%target4430744452%_
                      _%tl4430944455%_)
                     (if (gx#stx-pair/null? _%tl4429744425%_)
                         (let ((_%__splice4477244773%_
                                (gx#syntax-split-splice _%tl4429744425%_ '0)))
                           (let ((_%tl4432244354%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4477244773%_ '1)))
                                 (_%target4432044351%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4477244773%_ '0))))
                             (if (gx#stx-null? _%tl4432244354%_)
                                 (_%__match4482044821%_
                                  _%e4429944418%_
                                  _%hd4429844422%_
                                  _%tl4429744425%_
                                  _%__splice4477244773%_
                                  _%target4432044351%_
                                  _%tl4432244354%_)
                                 (let ()
                                   (declare (not safe))
                                   (_%g4429344334%_)))))
                         (let () (declare (not safe)) (_%g4429344334%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _%tl4429744425%_)
                                                         (let ((_%__splice4477244773%_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl4429744425%_
                         '0)))
                   (let ((_%tl4432244354%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4477244773%_ '1)))
                         (_%target4432044351%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4477244773%_ '0))))
                     (if (gx#stx-null? _%tl4432244354%_)
                         (_%__match4482044821%_
                          _%e4429944418%_
                          _%hd4429844422%_
                          _%tl4429744425%_
                          _%__splice4477244773%_
                          _%target4432044351%_
                          _%tl4432244354%_)
                         (let () (declare (not safe)) (_%g4429344334%_)))))
                 (let () (declare (not safe)) (_%g4429344334%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _%tl4429744425%_)
                                                 (let ((_%__splice4477244773%_
                                                        (gx#syntax-split-splice
                                                         _%tl4429744425%_
                                                         '0)))
                                                   (let ((_%tl4432244354%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4477244773%_
                                                             '1)))
                                                         (_%target4432044351%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4477244773%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4432244354%_)
                                                         (_%__match4482044821%_
                                                          _%e4429944418%_
                                                          _%hd4429844422%_
                                                          _%tl4429744425%_
                                                          _%__splice4477244773%_
                                                          _%target4432044351%_
                                                          _%tl4432244354%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4429344334%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4429344334%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4429744425%_)
                                             (let ((_%__splice4477244773%_
                                                    (gx#syntax-split-splice
                                                     _%tl4429744425%_
                                                     '0)))
                                               (let ((_%tl4432244354%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4477244773%_
                                                         '1)))
                                                     (_%target4432044351%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4477244773%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4432244354%_)
                                                     (_%__match4482044821%_
                                                      _%e4429944418%_
                                                      _%hd4429844422%_
                                                      _%tl4429744425%_
                                                      _%__splice4477244773%_
                                                      _%target4432044351%_
                                                      _%tl4432244354%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4429344334%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4429344334%_)))))
                                   (if (gx#stx-pair/null? _%tl4429744425%_)
                                       (let ((_%__splice4477244773%_
                                              (gx#syntax-split-splice
                                               _%tl4429744425%_
                                               '0)))
                                         (let ((_%tl4432244354%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4477244773%_
                                                   '1)))
                                               (_%target4432044351%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4477244773%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4432244354%_)
                                               (_%__match4482044821%_
                                                _%e4429944418%_
                                                _%hd4429844422%_
                                                _%tl4429744425%_
                                                _%__splice4477244773%_
                                                _%target4432044351%_
                                                _%tl4432244354%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4429344334%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4429344334%_))))))
                           (if (gx#stx-pair/null? _%tl4429744425%_)
                               (let ((_%__splice4477244773%_
                                      (gx#syntax-split-splice
                                       _%tl4429744425%_
                                       '0)))
                                 (let ((_%tl4432244354%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4477244773%_
                                           '1)))
                                       (_%target4432044351%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4477244773%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4432244354%_)
                                       (_%__match4482044821%_
                                        _%e4429944418%_
                                        _%hd4429844422%_
                                        _%tl4429744425%_
                                        _%__splice4477244773%_
                                        _%target4432044351%_
                                        _%tl4432244354%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4429344334%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4429344334%_))))))
                   (let () (declare (not safe)) (_%g4429344334%_)))))))))))
