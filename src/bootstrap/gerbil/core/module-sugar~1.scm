(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_%$stx46348%_)
      (let* ((_%__stx4913249133%_ _%$stx46348%_)
             (_%g4635346372%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4913249133%_))))
        (let ((_%__kont4913549136%_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (_%__kont4913749138%_
               (lambda (_%g4635846399%_ _%g4635946401%_ _%g4636046402%_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _%g4635946401%_
                                   (cons (cons _%g4636046402%_ _%g4635846399%_)
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _%g4635946401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? _%__stx4913249133%_)
              (let ((_%e4635546424%_ (gx#syntax-e _%__stx4913249133%_)))
                (let ((_%tl4635746431%_
                       (let () (declare (not safe)) (##cdr _%e4635546424%_)))
                      (_%hd4635646428%_
                       (let () (declare (not safe)) (##car _%e4635546424%_))))
                  (if (gx#stx-null? _%tl4635746431%_)
                      (_%__kont4913549136%_)
                      (if (gx#stx-pair? _%tl4635746431%_)
                          (let ((_%e4636446389%_
                                 (gx#syntax-e _%tl4635746431%_)))
                            (let ((_%tl4636646396%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4636446389%_)))
                                  (_%hd4636546393%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4636446389%_))))
                              (_%__kont4913749138%_
                               _%tl4636646396%_
                               _%hd4636546393%_
                               _%hd4635646428%_)))
                          (let () (declare (not safe)) (_%g4635346372%_))))))
              (let () (declare (not safe)) (_%g4635346372%_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_%$stx46442%_)
      (let* ((_%__stx4916249163%_ _%$stx46442%_)
             (_%g4644746487%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4916249163%_))))
        (let ((_%__kont4916549166%_
               (lambda (_%g4644946623%_ _%g4645046625%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g4645046625%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _%g4644946623%_ '()))
                                   '())))))
              (_%__kont4916749168%_
               (lambda (_%g4646046552%_
                        _%g4646146554%_
                        _%g4646246555%_
                        _%g4646346556%_)
                 (cons _%g4646346556%_
                       (cons _%g4646246555%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g4646146554%_
                                               (foldr (lambda (_%g4657746580%_
                                                               _%g4657846583%_)
                                                        (cons _%g4657746580%_
                                                              _%g4657846583%_))
                                                      '()
                                                      _%g4646046552%_)))
                                   '()))))))
          (let* ((_%__match4921749218%_
                  (lambda (_%e4646446494%_
                           _%hd4646546498%_
                           _%tl4646646501%_
                           _%e4646746504%_
                           _%hd4646846508%_
                           _%tl4646946511%_
                           _%e4647046514%_
                           _%hd4647146518%_
                           _%tl4647246521%_
                           _%__splice4916949170%_
                           _%target4647346524%_
                           _%tl4647546527%_)
                    (letrec ((_%loop4647646530%_
                              (lambda (_%hd4647446534%_ _%body4648046537%_)
                                (if (gx#stx-pair? _%hd4647446534%_)
                                    (let ((_%e4647746539%_
                                           (gx#syntax-e _%hd4647446534%_)))
                                      (let ((_%lp-tl4647946546%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4647746539%_)))
                                            (_%lp-hd4647846543%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4647746539%_))))
                                        (_%loop4647646530%_
                                         _%lp-tl4647946546%_
                                         (cons _%lp-hd4647846543%_
                                               _%body4648046537%_))))
                                    (let ((_%body4648146549%_
                                           (reverse _%body4648046537%_)))
                                      (let ((_%g4646046552%_
                                             _%body4648146549%_)
                                            (_%g4646146554%_ _%tl4647246521%_)
                                            (_%g4646246555%_ _%hd4647146518%_)
                                            (_%g4646346556%_ _%hd4646546498%_))
                                        (if (gx#identifier? _%g4646246555%_)
                                            (_%__kont4916749168%_
                                             _%g4646046552%_
                                             _%g4646146554%_
                                             _%g4646246555%_
                                             _%g4646346556%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4644746487%_)))))))))
                      (_%loop4647646530%_ _%target4647346524%_ '()))))
                 (_%__match4919149192%_
                  (lambda (_%e4645146593%_
                           _%hd4645246597%_
                           _%tl4645346600%_
                           _%e4645446603%_
                           _%hd4645546607%_
                           _%tl4645646610%_
                           _%e4645746613%_
                           _%hd4645846617%_
                           _%tl4645946620%_)
                    (let ((_%g4644946623%_ _%hd4645846617%_)
                          (_%g4645046625%_ _%hd4645546607%_))
                      (if (gx#identifier? _%g4645046625%_)
                          (_%__kont4916549166%_
                           _%g4644946623%_
                           _%g4645046625%_)
                          (if (gx#stx-pair? _%hd4645546607%_)
                              (let ((_%e4647046514%_
                                     (gx#syntax-e _%hd4645546607%_)))
                                (let ((_%tl4647246521%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4647046514%_)))
                                      (_%hd4647146518%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4647046514%_))))
                                  (if (gx#stx-pair/null? _%tl4645646610%_)
                                      (let ((_%__splice4916949170%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4645646610%_
                                              '0)))
                                        (let ((_%tl4647546527%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4916949170%_
                                                  '1)))
                                              (_%target4647346524%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4916949170%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4647546527%_)
                                              (_%__match4921749218%_
                                               _%e4645146593%_
                                               _%hd4645246597%_
                                               _%tl4645346600%_
                                               _%e4645446603%_
                                               _%hd4645546607%_
                                               _%tl4645646610%_
                                               _%e4647046514%_
                                               _%hd4647146518%_
                                               _%tl4647246521%_
                                               _%__splice4916949170%_
                                               _%target4647346524%_
                                               _%tl4647546527%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4644746487%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4644746487%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4644746487%_))))))))
            (if (gx#stx-pair? _%__stx4916249163%_)
                (let ((_%e4645146593%_ (gx#syntax-e _%__stx4916249163%_)))
                  (let ((_%tl4645346600%_
                         (let () (declare (not safe)) (##cdr _%e4645146593%_)))
                        (_%hd4645246597%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4645146593%_))))
                    (if (gx#stx-pair? _%tl4645346600%_)
                        (let ((_%e4645446603%_ (gx#syntax-e _%tl4645346600%_)))
                          (let ((_%tl4645646610%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4645446603%_)))
                                (_%hd4645546607%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4645446603%_))))
                            (if (gx#stx-pair? _%tl4645646610%_)
                                (let ((_%e4645746613%_
                                       (gx#syntax-e _%tl4645646610%_)))
                                  (let ((_%tl4645946620%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4645746613%_)))
                                        (_%hd4645846617%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4645746613%_))))
                                    (if (gx#stx-null? _%tl4645946620%_)
                                        (_%__match4919149192%_
                                         _%e4645146593%_
                                         _%hd4645246597%_
                                         _%tl4645346600%_
                                         _%e4645446603%_
                                         _%hd4645546607%_
                                         _%tl4645646610%_
                                         _%e4645746613%_
                                         _%hd4645846617%_
                                         _%tl4645946620%_)
                                        (if (gx#stx-pair? _%hd4645546607%_)
                                            (let ((_%e4647046514%_
                                                   (gx#syntax-e
                                                    _%hd4645546607%_)))
                                              (let ((_%tl4647246521%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4647046514%_)))
                                                    (_%hd4647146518%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4647046514%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4645646610%_)
                                                    (let ((_%__splice4916949170%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4645646610%_
                                                            '0)))
                                                      (let ((_%tl4647546527%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4916949170%_ '1)))
                    (_%target4647346524%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4916949170%_ '0))))
                (if (gx#stx-null? _%tl4647546527%_)
                    (_%__match4921749218%_
                     _%e4645146593%_
                     _%hd4645246597%_
                     _%tl4645346600%_
                     _%e4645446603%_
                     _%hd4645546607%_
                     _%tl4645646610%_
                     _%e4647046514%_
                     _%hd4647146518%_
                     _%tl4647246521%_
                     _%__splice4916949170%_
                     _%target4647346524%_
                     _%tl4647546527%_)
                    (let () (declare (not safe)) (_%g4644746487%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4644746487%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4644746487%_))))))
                                (if (gx#stx-pair? _%hd4645546607%_)
                                    (let ((_%e4647046514%_
                                           (gx#syntax-e _%hd4645546607%_)))
                                      (let ((_%tl4647246521%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4647046514%_)))
                                            (_%hd4647146518%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4647046514%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4645646610%_)
                                            (let ((_%__splice4916949170%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4645646610%_
                                                    '0)))
                                              (let ((_%tl4647546527%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4916949170%_
                                                        '1)))
                                                    (_%target4647346524%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4916949170%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4647546527%_)
                                                    (_%__match4921749218%_
                                                     _%e4645146593%_
                                                     _%hd4645246597%_
                                                     _%tl4645346600%_
                                                     _%e4645446603%_
                                                     _%hd4645546607%_
                                                     _%tl4645646610%_
                                                     _%e4647046514%_
                                                     _%hd4647146518%_
                                                     _%tl4647246521%_
                                                     _%__splice4916949170%_
                                                     _%target4647346524%_
                                                     _%tl4647546527%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4644746487%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4644746487%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4644746487%_))))))
                        (let () (declare (not safe)) (_%g4644746487%_)))))
                (let () (declare (not safe)) (_%g4644746487%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_%$stx46645%_)
      (let* ((_%__stx4922049221%_ _%$stx46645%_)
             (_%g4665046690%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4922049221%_))))
        (let ((_%__kont4922349224%_
               (lambda (_%g4665246826%_ _%g4665346828%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g4665346828%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _%g4665246826%_ '()))
                                   '())))))
              (_%__kont4922549226%_
               (lambda (_%g4666346755%_
                        _%g4666446757%_
                        _%g4666546758%_
                        _%g4666646759%_)
                 (cons _%g4666646759%_
                       (cons _%g4666546758%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g4666446757%_
                                               (foldr (lambda (_%g4678046783%_
                                                               _%g4678146786%_)
                                                        (cons _%g4678046783%_
                                                              _%g4678146786%_))
                                                      '()
                                                      _%g4666346755%_)))
                                   '()))))))
          (let* ((_%__match4927549276%_
                  (lambda (_%e4666746697%_
                           _%hd4666846701%_
                           _%tl4666946704%_
                           _%e4667046707%_
                           _%hd4667146711%_
                           _%tl4667246714%_
                           _%e4667346717%_
                           _%hd4667446721%_
                           _%tl4667546724%_
                           _%__splice4922749228%_
                           _%target4667646727%_
                           _%tl4667846730%_)
                    (letrec ((_%loop4667946733%_
                              (lambda (_%hd4667746737%_ _%body4668346740%_)
                                (if (gx#stx-pair? _%hd4667746737%_)
                                    (let ((_%e4668046742%_
                                           (gx#syntax-e _%hd4667746737%_)))
                                      (let ((_%lp-tl4668246749%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4668046742%_)))
                                            (_%lp-hd4668146746%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4668046742%_))))
                                        (_%loop4667946733%_
                                         _%lp-tl4668246749%_
                                         (cons _%lp-hd4668146746%_
                                               _%body4668346740%_))))
                                    (let ((_%body4668446752%_
                                           (reverse _%body4668346740%_)))
                                      (let ((_%g4666346755%_
                                             _%body4668446752%_)
                                            (_%g4666446757%_ _%tl4667546724%_)
                                            (_%g4666546758%_ _%hd4667446721%_)
                                            (_%g4666646759%_ _%hd4666846701%_))
                                        (if (gx#identifier? _%g4666546758%_)
                                            (_%__kont4922549226%_
                                             _%g4666346755%_
                                             _%g4666446757%_
                                             _%g4666546758%_
                                             _%g4666646759%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4665046690%_)))))))))
                      (_%loop4667946733%_ _%target4667646727%_ '()))))
                 (_%__match4924949250%_
                  (lambda (_%e4665446796%_
                           _%hd4665546800%_
                           _%tl4665646803%_
                           _%e4665746806%_
                           _%hd4665846810%_
                           _%tl4665946813%_
                           _%e4666046816%_
                           _%hd4666146820%_
                           _%tl4666246823%_)
                    (let ((_%g4665246826%_ _%hd4666146820%_)
                          (_%g4665346828%_ _%hd4665846810%_))
                      (if (gx#identifier? _%g4665346828%_)
                          (_%__kont4922349224%_
                           _%g4665246826%_
                           _%g4665346828%_)
                          (if (gx#stx-pair? _%hd4665846810%_)
                              (let ((_%e4667346717%_
                                     (gx#syntax-e _%hd4665846810%_)))
                                (let ((_%tl4667546724%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4667346717%_)))
                                      (_%hd4667446721%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4667346717%_))))
                                  (if (gx#stx-pair/null? _%tl4665946813%_)
                                      (let ((_%__splice4922749228%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4665946813%_
                                              '0)))
                                        (let ((_%tl4667846730%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4922749228%_
                                                  '1)))
                                              (_%target4667646727%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4922749228%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4667846730%_)
                                              (_%__match4927549276%_
                                               _%e4665446796%_
                                               _%hd4665546800%_
                                               _%tl4665646803%_
                                               _%e4665746806%_
                                               _%hd4665846810%_
                                               _%tl4665946813%_
                                               _%e4667346717%_
                                               _%hd4667446721%_
                                               _%tl4667546724%_
                                               _%__splice4922749228%_
                                               _%target4667646727%_
                                               _%tl4667846730%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4665046690%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4665046690%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4665046690%_))))))))
            (if (gx#stx-pair? _%__stx4922049221%_)
                (let ((_%e4665446796%_ (gx#syntax-e _%__stx4922049221%_)))
                  (let ((_%tl4665646803%_
                         (let () (declare (not safe)) (##cdr _%e4665446796%_)))
                        (_%hd4665546800%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4665446796%_))))
                    (if (gx#stx-pair? _%tl4665646803%_)
                        (let ((_%e4665746806%_ (gx#syntax-e _%tl4665646803%_)))
                          (let ((_%tl4665946813%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4665746806%_)))
                                (_%hd4665846810%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4665746806%_))))
                            (if (gx#stx-pair? _%tl4665946813%_)
                                (let ((_%e4666046816%_
                                       (gx#syntax-e _%tl4665946813%_)))
                                  (let ((_%tl4666246823%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4666046816%_)))
                                        (_%hd4666146820%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4666046816%_))))
                                    (if (gx#stx-null? _%tl4666246823%_)
                                        (_%__match4924949250%_
                                         _%e4665446796%_
                                         _%hd4665546800%_
                                         _%tl4665646803%_
                                         _%e4665746806%_
                                         _%hd4665846810%_
                                         _%tl4665946813%_
                                         _%e4666046816%_
                                         _%hd4666146820%_
                                         _%tl4666246823%_)
                                        (if (gx#stx-pair? _%hd4665846810%_)
                                            (let ((_%e4667346717%_
                                                   (gx#syntax-e
                                                    _%hd4665846810%_)))
                                              (let ((_%tl4667546724%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4667346717%_)))
                                                    (_%hd4667446721%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4667346717%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4665946813%_)
                                                    (let ((_%__splice4922749228%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4665946813%_
                                                            '0)))
                                                      (let ((_%tl4667846730%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4922749228%_ '1)))
                    (_%target4667646727%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4922749228%_ '0))))
                (if (gx#stx-null? _%tl4667846730%_)
                    (_%__match4927549276%_
                     _%e4665446796%_
                     _%hd4665546800%_
                     _%tl4665646803%_
                     _%e4665746806%_
                     _%hd4665846810%_
                     _%tl4665946813%_
                     _%e4667346717%_
                     _%hd4667446721%_
                     _%tl4667546724%_
                     _%__splice4922749228%_
                     _%target4667646727%_
                     _%tl4667846730%_)
                    (let () (declare (not safe)) (_%g4665046690%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4665046690%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4665046690%_))))))
                                (if (gx#stx-pair? _%hd4665846810%_)
                                    (let ((_%e4667346717%_
                                           (gx#syntax-e _%hd4665846810%_)))
                                      (let ((_%tl4667546724%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4667346717%_)))
                                            (_%hd4667446721%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4667346717%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4665946813%_)
                                            (let ((_%__splice4922749228%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4665946813%_
                                                    '0)))
                                              (let ((_%tl4667846730%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4922749228%_
                                                        '1)))
                                                    (_%target4667646727%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4922749228%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4667846730%_)
                                                    (_%__match4927549276%_
                                                     _%e4665446796%_
                                                     _%hd4665546800%_
                                                     _%tl4665646803%_
                                                     _%e4665746806%_
                                                     _%hd4665846810%_
                                                     _%tl4665946813%_
                                                     _%e4667346717%_
                                                     _%hd4667446721%_
                                                     _%tl4667546724%_
                                                     _%__splice4922749228%_
                                                     _%target4667646727%_
                                                     _%tl4667846730%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4665046690%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4665046690%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4665046690%_))))))
                        (let () (declare (not safe)) (_%g4665046690%_)))))
                (let () (declare (not safe)) (_%g4665046690%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_%$stx46848%_)
      (let* ((_%__stx4927849279%_ _%$stx46848%_)
             (_%g4685346893%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4927849279%_))))
        (let ((_%__kont4928149282%_
               (lambda (_%g4685547029%_ _%g4685647031%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g4685647031%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _%g4685547029%_ '()))
                                   '())))))
              (_%__kont4928349284%_
               (lambda (_%g4686646958%_
                        _%g4686746960%_
                        _%g4686846961%_
                        _%g4686946962%_)
                 (cons _%g4686946962%_
                       (cons _%g4686846961%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g4686746960%_
                                               (foldr (lambda (_%g4698346986%_
                                                               _%g4698446989%_)
                                                        (cons _%g4698346986%_
                                                              _%g4698446989%_))
                                                      '()
                                                      _%g4686646958%_)))
                                   '()))))))
          (let* ((_%__match4933349334%_
                  (lambda (_%e4687046900%_
                           _%hd4687146904%_
                           _%tl4687246907%_
                           _%e4687346910%_
                           _%hd4687446914%_
                           _%tl4687546917%_
                           _%e4687646920%_
                           _%hd4687746924%_
                           _%tl4687846927%_
                           _%__splice4928549286%_
                           _%target4687946930%_
                           _%tl4688146933%_)
                    (letrec ((_%loop4688246936%_
                              (lambda (_%hd4688046940%_ _%body4688646943%_)
                                (if (gx#stx-pair? _%hd4688046940%_)
                                    (let ((_%e4688346945%_
                                           (gx#syntax-e _%hd4688046940%_)))
                                      (let ((_%lp-tl4688546952%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4688346945%_)))
                                            (_%lp-hd4688446949%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4688346945%_))))
                                        (_%loop4688246936%_
                                         _%lp-tl4688546952%_
                                         (cons _%lp-hd4688446949%_
                                               _%body4688646943%_))))
                                    (let ((_%body4688746955%_
                                           (reverse _%body4688646943%_)))
                                      (let ((_%g4686646958%_
                                             _%body4688746955%_)
                                            (_%g4686746960%_ _%tl4687846927%_)
                                            (_%g4686846961%_ _%hd4687746924%_)
                                            (_%g4686946962%_ _%hd4687146904%_))
                                        (if (gx#identifier? _%g4686846961%_)
                                            (_%__kont4928349284%_
                                             _%g4686646958%_
                                             _%g4686746960%_
                                             _%g4686846961%_
                                             _%g4686946962%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4685346893%_)))))))))
                      (_%loop4688246936%_ _%target4687946930%_ '()))))
                 (_%__match4930749308%_
                  (lambda (_%e4685746999%_
                           _%hd4685847003%_
                           _%tl4685947006%_
                           _%e4686047009%_
                           _%hd4686147013%_
                           _%tl4686247016%_
                           _%e4686347019%_
                           _%hd4686447023%_
                           _%tl4686547026%_)
                    (let ((_%g4685547029%_ _%hd4686447023%_)
                          (_%g4685647031%_ _%hd4686147013%_))
                      (if (gx#identifier? _%g4685647031%_)
                          (_%__kont4928149282%_
                           _%g4685547029%_
                           _%g4685647031%_)
                          (if (gx#stx-pair? _%hd4686147013%_)
                              (let ((_%e4687646920%_
                                     (gx#syntax-e _%hd4686147013%_)))
                                (let ((_%tl4687846927%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4687646920%_)))
                                      (_%hd4687746924%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4687646920%_))))
                                  (if (gx#stx-pair/null? _%tl4686247016%_)
                                      (let ((_%__splice4928549286%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4686247016%_
                                              '0)))
                                        (let ((_%tl4688146933%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4928549286%_
                                                  '1)))
                                              (_%target4687946930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4928549286%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4688146933%_)
                                              (_%__match4933349334%_
                                               _%e4685746999%_
                                               _%hd4685847003%_
                                               _%tl4685947006%_
                                               _%e4686047009%_
                                               _%hd4686147013%_
                                               _%tl4686247016%_
                                               _%e4687646920%_
                                               _%hd4687746924%_
                                               _%tl4687846927%_
                                               _%__splice4928549286%_
                                               _%target4687946930%_
                                               _%tl4688146933%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4685346893%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4685346893%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4685346893%_))))))))
            (if (gx#stx-pair? _%__stx4927849279%_)
                (let ((_%e4685746999%_ (gx#syntax-e _%__stx4927849279%_)))
                  (let ((_%tl4685947006%_
                         (let () (declare (not safe)) (##cdr _%e4685746999%_)))
                        (_%hd4685847003%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4685746999%_))))
                    (if (gx#stx-pair? _%tl4685947006%_)
                        (let ((_%e4686047009%_ (gx#syntax-e _%tl4685947006%_)))
                          (let ((_%tl4686247016%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4686047009%_)))
                                (_%hd4686147013%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4686047009%_))))
                            (if (gx#stx-pair? _%tl4686247016%_)
                                (let ((_%e4686347019%_
                                       (gx#syntax-e _%tl4686247016%_)))
                                  (let ((_%tl4686547026%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4686347019%_)))
                                        (_%hd4686447023%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4686347019%_))))
                                    (if (gx#stx-null? _%tl4686547026%_)
                                        (_%__match4930749308%_
                                         _%e4685746999%_
                                         _%hd4685847003%_
                                         _%tl4685947006%_
                                         _%e4686047009%_
                                         _%hd4686147013%_
                                         _%tl4686247016%_
                                         _%e4686347019%_
                                         _%hd4686447023%_
                                         _%tl4686547026%_)
                                        (if (gx#stx-pair? _%hd4686147013%_)
                                            (let ((_%e4687646920%_
                                                   (gx#syntax-e
                                                    _%hd4686147013%_)))
                                              (let ((_%tl4687846927%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4687646920%_)))
                                                    (_%hd4687746924%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4687646920%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4686247016%_)
                                                    (let ((_%__splice4928549286%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4686247016%_
                                                            '0)))
                                                      (let ((_%tl4688146933%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4928549286%_ '1)))
                    (_%target4687946930%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4928549286%_ '0))))
                (if (gx#stx-null? _%tl4688146933%_)
                    (_%__match4933349334%_
                     _%e4685746999%_
                     _%hd4685847003%_
                     _%tl4685947006%_
                     _%e4686047009%_
                     _%hd4686147013%_
                     _%tl4686247016%_
                     _%e4687646920%_
                     _%hd4687746924%_
                     _%tl4687846927%_
                     _%__splice4928549286%_
                     _%target4687946930%_
                     _%tl4688146933%_)
                    (let () (declare (not safe)) (_%g4685346893%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4685346893%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4685346893%_))))))
                                (if (gx#stx-pair? _%hd4686147013%_)
                                    (let ((_%e4687646920%_
                                           (gx#syntax-e _%hd4686147013%_)))
                                      (let ((_%tl4687846927%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4687646920%_)))
                                            (_%hd4687746924%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4687646920%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4686247016%_)
                                            (let ((_%__splice4928549286%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4686247016%_
                                                    '0)))
                                              (let ((_%tl4688146933%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4928549286%_
                                                        '1)))
                                                    (_%target4687946930%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4928549286%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4688146933%_)
                                                    (_%__match4933349334%_
                                                     _%e4685746999%_
                                                     _%hd4685847003%_
                                                     _%tl4685947006%_
                                                     _%e4686047009%_
                                                     _%hd4686147013%_
                                                     _%tl4686247016%_
                                                     _%e4687646920%_
                                                     _%hd4687746924%_
                                                     _%tl4687846927%_
                                                     _%__splice4928549286%_
                                                     _%target4687946930%_
                                                     _%tl4688146933%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4685346893%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4685346893%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4685346893%_))))))
                        (let () (declare (not safe)) (_%g4685346893%_)))))
                (let () (declare (not safe)) (_%g4685346893%_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_%stx47051%_)
       (let* ((_%g4705447074%_
               (lambda (_%g4705547070%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4705547070%_)))
              (_%g4705347143%_
               (lambda (_%g4705547078%_)
                 (if (gx#stx-pair? _%g4705547078%_)
                     (let ((_%e4705747081%_ (gx#syntax-e _%g4705547078%_)))
                       (let ((_%hd4705847085%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4705747081%_)))
                             (_%tl4705947088%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4705747081%_))))
                         (if (gx#stx-pair/null? _%tl4705947088%_)
                             (let ((_g49428_
                                    (gx#syntax-split-splice
                                     _%tl4705947088%_
                                     '0)))
                               (begin
                                 (let ((_g49429_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g49428_)
                                              (##values-length _g49428_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g49429_ 2)))
                                       (error "Context expects 2 values"
                                              _g49429_)))
                                 (let ((_%target4706047091%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g49428_ 0)))
                                       (_%tl4706247094%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g49428_ 1))))
                                   (if (gx#stx-null? _%tl4706247094%_)
                                       (letrec ((_%loop4706347097%_
                                                 (lambda (_%hd4706147101%_
                                                          _%body4706747104%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4706147101%_)
                                                       (let ((_%e4706447106%_
                                                              (gx#syntax-e
                                                               _%hd4706147101%_)))
                                                         (let ((_%lp-hd4706547110%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4706447106%_)))
                       (_%lp-tl4706647113%_
                        (let () (declare (not safe)) (##cdr _%e4706447106%_))))
                   (_%loop4706347097%_
                    _%lp-tl4706647113%_
                    (cons _%lp-hd4706547110%_ _%body4706747104%_))))
               (let ((_%body4706847116%_ (reverse _%body4706747104%_)))
                 ((lambda (_%g4705647119%_)
                    (cons 'phi:
                          (cons '1
                                (foldr (lambda (_%g4713447137%_
                                                _%g4713547140%_)
                                         (cons _%g4713447137%_
                                               _%g4713547140%_))
                                       '()
                                       _%g4705647119%_))))
                  _%body4706847116%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4706347097%_
                                          _%target4706047091%_
                                          '()))
                                       (_%g4705447074%_ _%g4705547078%_)))))
                             (_%g4705447074%_ _%g4705547078%_))))
                     (_%g4705447074%_ _%g4705547078%_)))))
         (_%g4705347143%_ _%stx47051%_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_%stx47148%_)
       (let* ((_%g4715147171%_
               (lambda (_%g4715247167%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4715247167%_)))
              (_%g4715047240%_
               (lambda (_%g4715247175%_)
                 (if (gx#stx-pair? _%g4715247175%_)
                     (let ((_%e4715447178%_ (gx#syntax-e _%g4715247175%_)))
                       (let ((_%hd4715547182%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4715447178%_)))
                             (_%tl4715647185%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4715447178%_))))
                         (if (gx#stx-pair/null? _%tl4715647185%_)
                             (let ((_g49430_
                                    (gx#syntax-split-splice
                                     _%tl4715647185%_
                                     '0)))
                               (begin
                                 (let ((_g49431_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g49430_)
                                              (##values-length _g49430_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g49431_ 2)))
                                       (error "Context expects 2 values"
                                              _g49431_)))
                                 (let ((_%target4715747188%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g49430_ 0)))
                                       (_%tl4715947191%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g49430_ 1))))
                                   (if (gx#stx-null? _%tl4715947191%_)
                                       (letrec ((_%loop4716047194%_
                                                 (lambda (_%hd4715847198%_
                                                          _%body4716447201%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4715847198%_)
                                                       (let ((_%e4716147203%_
                                                              (gx#syntax-e
                                                               _%hd4715847198%_)))
                                                         (let ((_%lp-hd4716247207%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4716147203%_)))
                       (_%lp-tl4716347210%_
                        (let () (declare (not safe)) (##cdr _%e4716147203%_))))
                   (_%loop4716047194%_
                    _%lp-tl4716347210%_
                    (cons _%lp-hd4716247207%_ _%body4716447201%_))))
               (let ((_%body4716547213%_ (reverse _%body4716447201%_)))
                 ((lambda (_%g4715347216%_)
                    (cons 'phi:
                          (cons '-1
                                (foldr (lambda (_%g4723147234%_
                                                _%g4723247237%_)
                                         (cons _%g4723147234%_
                                               _%g4723247237%_))
                                       '()
                                       _%g4715347216%_))))
                  _%body4716547213%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4716047194%_
                                          _%target4715747188%_
                                          '()))
                                       (_%g4715147171%_ _%g4715247175%_)))))
                             (_%g4715147171%_ _%g4715247175%_))))
                     (_%g4715147171%_ _%g4715247175%_)))))
         (_%g4715047240%_ _%stx47148%_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_%stx47245%_)
       (let* ((_%g4724847272%_
               (lambda (_%g4724947268%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4724947268%_)))
              (_%g4724747398%_
               (lambda (_%g4724947276%_)
                 (if (gx#stx-pair? _%g4724947276%_)
                     (let ((_%e4725247279%_ (gx#syntax-e _%g4724947276%_)))
                       (let ((_%hd4725347283%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4725247279%_)))
                             (_%tl4725447286%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4725247279%_))))
                         (if (gx#stx-pair? _%tl4725447286%_)
                             (let ((_%e4725547289%_
                                    (gx#syntax-e _%tl4725447286%_)))
                               (let ((_%hd4725647293%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4725547289%_)))
                                     (_%tl4725747296%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4725547289%_))))
                                 (if (gx#stx-pair/null? _%tl4725747296%_)
                                     (let ((_g49432_
                                            (gx#syntax-split-splice
                                             _%tl4725747296%_
                                             '0)))
                                       (begin
                                         (let ((_g49433_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49432_)
                                                      (##values-length
                                                       _g49432_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49433_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49433_)))
                                         (let ((_%target4725847299%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49432_ 0)))
                                               (_%tl4726047302%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49432_ 1))))
                                           (if (gx#stx-null? _%tl4726047302%_)
                                               (letrec ((_%loop4726147305%_
                                                         (lambda (_%hd4725947309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4726547312%_)
                   (if (gx#stx-pair? _%hd4725947309%_)
                       (let ((_%e4726247314%_ (gx#syntax-e _%hd4725947309%_)))
                         (let ((_%lp-hd4726347318%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4726247314%_)))
                               (_%lp-tl4726447321%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4726247314%_))))
                           (_%loop4726147305%_
                            _%lp-tl4726447321%_
                            (cons _%lp-hd4726347318%_ _%id4726547312%_))))
                       (let ((_%id4726647324%_ (reverse _%id4726547312%_)))
                         ((lambda (_%g4725047327%_ _%g4725147329%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4734647349%_
                                                 _%g4734747352%_)
                                          (cons _%g4734647349%_
                                                _%g4734747352%_))
                                        '()
                                        _%g4725047327%_))
                                (let* ((_%keys47363%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4735447357%_
                                                         _%g4735547360%_)
                                                  (cons _%g4735447357%_
                                                        _%g4735547360%_))
                                                '()
                                                _%g4725047327%_)))
                                       (_%keytab47374%_
                                        (let ((_%ht47366%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4736847370%_)
                                             (hash-put!
                                              _%ht47366%_
                                              _%g4736847370%_
                                              '#t))
                                           _%keys47363%_)
                                          _%ht47366%_))
                                       (_%imports47377%_
                                        (gx#core-expand-import-source
                                         _%g4725147329%_))
                                       (_%fold-e47393%_
                                        (letrec ((_%fold-e47380%_
                                                  (lambda (_%in47383%_
                                                           _%r47385%_)
                                                    (if (gx#module-import?
                                                         _%in47383%_)
                                                        (if (hash-get
                                                             _%keytab47374%_
                                                             (gx#module-import-name
                                                              _%in47383%_))
                                                            (cons _%in47383%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r47385%_)
                    _%r47385%_)
                (if (gx#import-set? _%in47383%_)
                    (foldl _%fold-e47380%_
                           _%r47385%_
                           (gx#import-set-imports _%in47383%_))
                    _%r47385%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47380%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e47393%_
                                               '()
                                               _%imports47377%_)))
                                (_%g4724847272%_ _%g4724947276%_)))
                          _%id4726647324%_
                          _%hd4725647293%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4726147305%_
                                                  _%target4725847299%_
                                                  '()))
                                               (_%g4724847272%_
                                                _%g4724947276%_)))))
                                     (_%g4724847272%_ _%g4724947276%_))))
                             (_%g4724847272%_ _%g4724947276%_))))
                     (_%g4724847272%_ _%g4724947276%_)))))
         (_%g4724747398%_ _%stx47245%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_%stx47403%_)
       (let* ((_%g4740647430%_
               (lambda (_%g4740747426%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4740747426%_)))
              (_%g4740547556%_
               (lambda (_%g4740747434%_)
                 (if (gx#stx-pair? _%g4740747434%_)
                     (let ((_%e4741047437%_ (gx#syntax-e _%g4740747434%_)))
                       (let ((_%hd4741147441%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4741047437%_)))
                             (_%tl4741247444%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4741047437%_))))
                         (if (gx#stx-pair? _%tl4741247444%_)
                             (let ((_%e4741347447%_
                                    (gx#syntax-e _%tl4741247444%_)))
                               (let ((_%hd4741447451%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4741347447%_)))
                                     (_%tl4741547454%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4741347447%_))))
                                 (if (gx#stx-pair/null? _%tl4741547454%_)
                                     (let ((_g49434_
                                            (gx#syntax-split-splice
                                             _%tl4741547454%_
                                             '0)))
                                       (begin
                                         (let ((_g49435_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49434_)
                                                      (##values-length
                                                       _g49434_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49435_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49435_)))
                                         (let ((_%target4741647457%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49434_ 0)))
                                               (_%tl4741847460%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49434_ 1))))
                                           (if (gx#stx-null? _%tl4741847460%_)
                                               (letrec ((_%loop4741947463%_
                                                         (lambda (_%hd4741747467%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4742347470%_)
                   (if (gx#stx-pair? _%hd4741747467%_)
                       (let ((_%e4742047472%_ (gx#syntax-e _%hd4741747467%_)))
                         (let ((_%lp-hd4742147476%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4742047472%_)))
                               (_%lp-tl4742247479%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4742047472%_))))
                           (_%loop4741947463%_
                            _%lp-tl4742247479%_
                            (cons _%lp-hd4742147476%_ _%id4742347470%_))))
                       (let ((_%id4742447482%_ (reverse _%id4742347470%_)))
                         ((lambda (_%g4740847485%_ _%g4740947487%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4750447507%_
                                                 _%g4750547510%_)
                                          (cons _%g4750447507%_
                                                _%g4750547510%_))
                                        '()
                                        _%g4740847485%_))
                                (let* ((_%keys47521%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4751247515%_
                                                         _%g4751347518%_)
                                                  (cons _%g4751247515%_
                                                        _%g4751347518%_))
                                                '()
                                                _%g4740847485%_)))
                                       (_%keytab47532%_
                                        (let ((_%ht47524%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4752647528%_)
                                             (hash-put!
                                              _%ht47524%_
                                              _%g4752647528%_
                                              '#t))
                                           _%keys47521%_)
                                          _%ht47524%_))
                                       (_%imports47535%_
                                        (gx#core-expand-import-source
                                         _%g4740947487%_))
                                       (_%fold-e47551%_
                                        (letrec ((_%fold-e47538%_
                                                  (lambda (_%in47541%_
                                                           _%r47543%_)
                                                    (if (gx#module-import?
                                                         _%in47541%_)
                                                        (if (hash-get
                                                             _%keytab47532%_
                                                             (gx#module-import-name
                                                              _%in47541%_))
                                                            _%r47543%_
                                                            (cons _%in47541%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r47543%_))
                (if (gx#import-set? _%in47541%_)
                    (foldl _%fold-e47538%_
                           _%r47543%_
                           (gx#import-set-imports _%in47541%_))
                    (cons _%in47541%_ _%r47543%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47538%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e47551%_
                                               '()
                                               _%imports47535%_)))
                                (_%g4740647430%_ _%g4740747434%_)))
                          _%id4742447482%_
                          _%hd4741447451%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4741947463%_
                                                  _%target4741647457%_
                                                  '()))
                                               (_%g4740647430%_
                                                _%g4740747434%_)))))
                                     (_%g4740647430%_ _%g4740747434%_))))
                             (_%g4740647430%_ _%g4740747434%_))))
                     (_%g4740647430%_ _%g4740747434%_)))))
         (_%g4740547556%_ _%stx47403%_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_%in47608%_ _%rename47610%_)
      (gx#make-module-import
       (gx#module-import-source _%in47608%_)
       _%rename47610%_
       (gx#module-import-phi _%in47608%_)
       (gx#module-import-weak? _%in47608%_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_%name47561%_ _%pre47563%_)
      (let* ((_%name4756447572%_ _%name47561%_)
             (_%else4756647584%_
              (lambda () (make-symbol _%pre47563%_ _%name47561%_)))
             (_%K4756847592%_
              (lambda (_%mark47588%_ _%id47590%_)
                (cons (make-symbol _%pre47563%_ _%id47590%_) _%mark47588%_))))
        (if (pair? _%name4756447572%_)
            (let ((_%hd4756947596%_
                   (let () (declare (not safe)) (##car _%name4756447572%_)))
                  (_%tl4757047599%_
                   (let () (declare (not safe)) (##cdr _%name4756447572%_))))
              (let* ((_%id47602%_ _%hd4756947596%_)
                     (_%mark47605%_ _%tl4757047599%_))
                (_%K4756847592%_ _%mark47605%_ _%id47602%_)))
            (_%else4756647584%_)))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_%stx47612%_)
       (let* ((_%g4761547648%_
               (lambda (_%g4761647644%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4761647644%_)))
              (_%g4761447839%_
               (lambda (_%g4761647652%_)
                 (if (gx#stx-pair? _%g4761647652%_)
                     (let ((_%e4762047655%_ (gx#syntax-e _%g4761647652%_)))
                       (let ((_%hd4762147659%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4762047655%_)))
                             (_%tl4762247662%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4762047655%_))))
                         (if (gx#stx-pair? _%tl4762247662%_)
                             (let ((_%e4762347665%_
                                    (gx#syntax-e _%tl4762247662%_)))
                               (let ((_%hd4762447669%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4762347665%_)))
                                     (_%tl4762547672%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4762347665%_))))
                                 (if (gx#stx-pair/null? _%tl4762547672%_)
                                     (let ((_g49436_
                                            (gx#syntax-split-splice
                                             _%tl4762547672%_
                                             '0)))
                                       (begin
                                         (let ((_g49437_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49436_)
                                                      (##values-length
                                                       _g49436_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49437_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49437_)))
                                         (let ((_%target4762647675%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49436_ 0)))
                                               (_%tl4762847678%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49436_ 1))))
                                           (if (gx#stx-null? _%tl4762847678%_)
                                               (letrec ((_%loop4762947681%_
                                                         (lambda (_%hd4762747685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4763347688%_
                          _%id4763447689%_)
                   (if (gx#stx-pair? _%hd4762747685%_)
                       (let ((_%e4763047691%_ (gx#syntax-e _%hd4762747685%_)))
                         (let ((_%lp-hd4763147695%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4763047691%_)))
                               (_%lp-tl4763247698%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4763047691%_))))
                           (if (gx#stx-pair? _%lp-hd4763147695%_)
                               (let ((_%e4763747701%_
                                      (gx#syntax-e _%lp-hd4763147695%_)))
                                 (let ((_%hd4763847705%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4763747701%_)))
                                       (_%tl4763947708%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4763747701%_))))
                                   (if (gx#stx-pair? _%tl4763947708%_)
                                       (let ((_%e4764047711%_
                                              (gx#syntax-e _%tl4763947708%_)))
                                         (let ((_%hd4764147715%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4764047711%_)))
                                               (_%tl4764247718%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4764047711%_))))
                                           (if (gx#stx-null? _%tl4764247718%_)
                                               (_%loop4762947681%_
                                                _%lp-tl4763247698%_
                                                (cons _%hd4764147715%_
                                                      _%new-id4763347688%_)
                                                (cons _%hd4763847705%_
                                                      _%id4763447689%_))
                                               (_%g4761547648%_
                                                _%g4761647652%_))))
                                       (_%g4761547648%_ _%g4761647652%_))))
                               (_%g4761547648%_ _%g4761647652%_))))
                       (let ((_%new-id4763547721%_
                              (reverse _%new-id4763347688%_))
                             (_%id4763647723%_ (reverse _%id4763447689%_)))
                         ((lambda (_%g4761747725%_
                                   _%g4761847727%_
                                   _%g4761947728%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4774647749%_
                                                      _%g4774747752%_)
                                               (cons _%g4774647749%_
                                                     _%g4774747752%_))
                                             '()
                                             _%g4761847727%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4775447757%_
                                                      _%g4775547760%_)
                                               (cons _%g4775447757%_
                                                     _%g4775547760%_))
                                             '()
                                             _%g4761747725%_)))
                                (let* ((_%keytab47763%_ (make-hash-table))
                                       (_%found47766%_ (make-hash-table))
                                       (_%_47789%_
                                        (for-each
                                         (lambda (_%id47769%_ _%new-id47771%_)
                                           (hash-put!
                                            _%keytab47763%_
                                            (gx#core-identifier-key
                                             _%id47769%_)
                                            (gx#core-identifier-key
                                             _%new-id47771%_)))
                                         (foldr (lambda (_%g4777247775%_
                                                         _%g4777347778%_)
                                                  (cons _%g4777247775%_
                                                        _%g4777347778%_))
                                                '()
                                                _%g4761847727%_)
                                         (foldr (lambda (_%g4778047783%_
                                                         _%g4778147786%_)
                                                  (cons _%g4778047783%_
                                                        _%g4778147786%_))
                                                '()
                                                _%g4761747725%_)))
                                       (_%imports47792%_
                                        (gx#core-expand-import-source
                                         _%g4761947728%_))
                                       (_%fold-e47820%_
                                        (letrec ((_%fold-e47795%_
                                                  (lambda (_%in47798%_
                                                           _%r47800%_)
                                                    (if (gx#module-import?
                                                         _%in47798%_)
                                                        (let* ((_%name47804%_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in47798%_))
                       (_%$e47807%_ (hash-get _%keytab47763%_ _%name47804%_)))
                  (if _%$e47807%_
                      ((lambda (_%rename47811%_)
                         (hash-put! _%found47766%_ _%name47804%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                _%in47798%_
                                _%rename47811%_)
                               _%r47800%_))
                       _%$e47807%_)
                      (cons _%in47798%_ _%r47800%_)))
                (if (gx#import-set? _%in47798%_)
                    (foldl _%fold-e47795%_
                           _%r47800%_
                           (gx#import-set-imports _%in47798%_))
                    (cons _%in47798%_ _%r47800%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47795%_))
                                       (_%new-imports47823%_
                                        (foldl _%fold-e47820%_
                                               '()
                                               _%imports47792%_)))
                                  (for-each
                                   (lambda (_%id47828%_)
                                     (if (hash-get
                                          _%found47766%_
                                          (gx#core-identifier-key _%id47828%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _%stx47612%_
                                          _%id47828%_)))
                                   (foldr (lambda (_%g4783047833%_
                                                   _%g4783147836%_)
                                            (cons _%g4783047833%_
                                                  _%g4783147836%_))
                                          '()
                                          _%g4761847727%_))
                                  (cons 'begin: _%new-imports47823%_))
                                (_%g4761547648%_ _%g4761647652%_)))
                          _%new-id4763547721%_
                          _%id4763647723%_
                          _%hd4762447669%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4762947681%_
                                                  _%target4762647675%_
                                                  '()
                                                  '()))
                                               (_%g4761547648%_
                                                _%g4761647652%_)))))
                                     (_%g4761547648%_ _%g4761647652%_))))
                             (_%g4761547648%_ _%g4761647652%_))))
                     (_%g4761547648%_ _%g4761647652%_)))))
         (_%g4761447839%_ _%stx47612%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_%stx47844%_)
       (let* ((_%g4784747865%_
               (lambda (_%g4784847861%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4784847861%_)))
              (_%g4784647950%_
               (lambda (_%g4784847869%_)
                 (if (gx#stx-pair? _%g4784847869%_)
                     (let ((_%e4785147872%_ (gx#syntax-e _%g4784847869%_)))
                       (let ((_%hd4785247876%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4785147872%_)))
                             (_%tl4785347879%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4785147872%_))))
                         (if (gx#stx-pair? _%tl4785347879%_)
                             (let ((_%e4785447882%_
                                    (gx#syntax-e _%tl4785347879%_)))
                               (let ((_%hd4785547886%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4785447882%_)))
                                     (_%tl4785647889%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4785447882%_))))
                                 (if (gx#stx-pair? _%tl4785647889%_)
                                     (let ((_%e4785747892%_
                                            (gx#syntax-e _%tl4785647889%_)))
                                       (let ((_%hd4785847896%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4785747892%_)))
                                             (_%tl4785947899%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4785747892%_))))
                                         (if (gx#stx-null? _%tl4785947899%_)
                                             ((lambda (_%g4784947902%_
                                                       _%g4785047904%_)
                                                (if (gx#identifier?
                                                     _%g4784947902%_)
                                                    (let* ((_%pre47920%_
                                                            (gx#stx-e
                                                             _%g4784947902%_))
                                                           (_%imports47923%_
                                                            (gx#core-expand-import-source
                                                             _%g4785047904%_))
                                                           (_%rename-e47929%_
                                                            (lambda (_%name47926%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name47926%_
                                                               _%pre47920%_)))
                                                           (_%fold-e47945%_
                                                            (letrec ((_%fold-e47932%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%in47935%_ _%r47937%_)
                                (if (gx#module-import? _%in47935%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                           _%in47935%_
                                           (_%rename-e47929%_
                                            (gx#module-import-name
                                             _%in47935%_)))
                                          _%r47937%_)
                                    (if (gx#import-set? _%in47935%_)
                                        (foldl _%fold-e47932%_
                                               _%r47937%_
                                               (gx#import-set-imports
                                                _%in47935%_))
                                        (cons _%in47935%_ _%r47937%_))))))
                      _%fold-e47932%_)))
              (cons 'begin: (foldl _%fold-e47945%_ '() _%imports47923%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4784747865%_
                                                     _%g4784847869%_)))
                                              _%hd4785847896%_
                                              _%hd4785547886%_)
                                             (_%g4784747865%_
                                              _%g4784847869%_))))
                                     (_%g4784747865%_ _%g4784847869%_))))
                             (_%g4784747865%_ _%g4784847869%_))))
                     (_%g4784747865%_ _%g4784847869%_)))))
         (_%g4784647950%_ _%stx47844%_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_%stx47954%_)
       (letrec ((_%flatten47957%_
                 (lambda (_%list-of-lists48208%_)
                   (foldr (lambda (_%v48211%_ _%acc48213%_)
                            (if (null? _%v48211%_)
                                _%acc48213%_
                                (if (pair? _%v48211%_)
                                    (append (_%flatten47957%_ _%v48211%_)
                                            _%acc48213%_)
                                    (cons _%v48211%_ _%acc48213%_))))
                          '()
                          _%list-of-lists48208%_)))
                (_%expand-path47959%_
                 (lambda (_%top48078%_ _%mod48080%_)
                   (let* ((_%__stx4933649337%_ _%mod48080%_)
                          (_%g4808348105%_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%__stx4933649337%_))))
                     (let ((_%__kont4933949340%_
                            (lambda (_%g4808548171%_ _%g4808648173%_)
                              (map (lambda (_%mod48188%_)
                                     (gx#stx-identifier
                                      _%top48078%_
                                      _%top48078%_
                                      '"/"
                                      _%mod48188%_))
                                   (_%flatten47957%_
                                    (map (lambda (_%g4819048192%_)
                                           (_%expand-path47959%_
                                            _%g4808648173%_
                                            _%g4819048192%_))
                                         (foldr (lambda (_%g4819548198%_
                                                         _%g4819648201%_)
                                                  (cons _%g4819548198%_
                                                        _%g4819648201%_))
                                                '()
                                                _%g4808548171%_))))))
                           (_%__kont4934349344%_
                            (lambda (_%g4809948112%_)
                              (gx#stx-identifier
                               _%top48078%_
                               _%top48078%_
                               '"/"
                               _%g4809948112%_))))
                       (let* ((_%g4808248126%_
                               (lambda ()
                                 (let ((_%g4809948112%_ _%__stx4933649337%_))
                                   (if (or (gx#identifier? _%g4809948112%_)
                                           (gx#stx-fixnum? _%g4809948112%_))
                                       (_%__kont4934349344%_ _%g4809948112%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4808348105%_))))))
                              (_%__match4935949360%_
                               (lambda (_%e4808748133%_
                                        _%hd4808848137%_
                                        _%tl4808948140%_
                                        _%__splice4934149342%_
                                        _%target4809048143%_
                                        _%tl4809248146%_)
                                 (letrec ((_%loop4809348149%_
                                           (lambda (_%hd4809148153%_
                                                    _%mod4809748156%_)
                                             (if (gx#stx-pair?
                                                  _%hd4809148153%_)
                                                 (let ((_%e4809448158%_
                                                        (gx#syntax-e
                                                         _%hd4809148153%_)))
                                                   (let ((_%lp-tl4809648165%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4809448158%_)))
                                                         (_%lp-hd4809548162%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4809448158%_))))
                                                     (_%loop4809348149%_
                                                      _%lp-tl4809648165%_
                                                      (cons _%lp-hd4809548162%_
                                                            _%mod4809748156%_))))
                                                 (let ((_%mod4809848168%_
                                                        (reverse _%mod4809748156%_)))
                                                   (_%__kont4933949340%_
                                                    _%mod4809848168%_
                                                    _%hd4808848137%_))))))
                                   (_%loop4809348149%_
                                    _%target4809048143%_
                                    '())))))
                         (if (gx#stx-pair? _%__stx4933649337%_)
                             (let ((_%e4808748133%_
                                    (gx#syntax-e _%__stx4933649337%_)))
                               (let ((_%tl4808948140%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4808748133%_)))
                                     (_%hd4808848137%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4808748133%_))))
                                 (if (gx#stx-pair/null? _%tl4808948140%_)
                                     (let ((_%__splice4934149342%_
                                            (gx#syntax-split-splice->vector
                                             _%tl4808948140%_
                                             '0)))
                                       (let ((_%tl4809248146%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4934149342%_
                                                 '1)))
                                             (_%target4809048143%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4934149342%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4809248146%_)
                                             (_%__match4935949360%_
                                              _%e4808748133%_
                                              _%hd4808848137%_
                                              _%tl4808948140%_
                                              _%__splice4934149342%_
                                              _%target4809048143%_
                                              _%tl4809248146%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4808248126%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4808248126%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4808248126%_)))))))))
         (let* ((_%g4796147985%_
                 (lambda (_%g4796247981%_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%g4796247981%_)))
                (_%g4796048074%_
                 (lambda (_%g4796247989%_)
                   (if (gx#stx-pair? _%g4796247989%_)
                       (let ((_%e4796547992%_ (gx#syntax-e _%g4796247989%_)))
                         (let ((_%hd4796647996%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4796547992%_)))
                               (_%tl4796747999%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4796547992%_))))
                           (if (gx#stx-pair? _%tl4796747999%_)
                               (let ((_%e4796848002%_
                                      (gx#syntax-e _%tl4796747999%_)))
                                 (let ((_%hd4796948006%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4796848002%_)))
                                       (_%tl4797048009%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4796848002%_))))
                                   (if (gx#stx-pair/null? _%tl4797048009%_)
                                       (let ((_g49438_
                                              (gx#syntax-split-splice
                                               _%tl4797048009%_
                                               '0)))
                                         (begin
                                           (let ((_g49439_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g49438_)
                                                        (##values-length
                                                         _g49438_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g49439_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g49439_)))
                                           (let ((_%target4797148012%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g49438_ 0)))
                                                 (_%tl4797348015%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g49438_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl4797348015%_)
                                                 (letrec ((_%loop4797448018%_
                                                           (lambda (_%hd4797248022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%mod4797848025%_)
                     (if (gx#stx-pair? _%hd4797248022%_)
                         (let ((_%e4797548027%_
                                (gx#syntax-e _%hd4797248022%_)))
                           (let ((_%lp-hd4797648031%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4797548027%_)))
                                 (_%lp-tl4797748034%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4797548027%_))))
                             (_%loop4797448018%_
                              _%lp-tl4797748034%_
                              (cons _%lp-hd4797648031%_ _%mod4797848025%_))))
                         (let ((_%mod4797948037%_ (reverse _%mod4797848025%_)))
                           ((lambda (_%g4796348040%_ _%g4796448042%_)
                              (cons 'begin:
                                    (_%flatten47957%_
                                     (map (lambda (_%g4806048062%_)
                                            (_%expand-path47959%_
                                             _%g4796448042%_
                                             _%g4806048062%_))
                                          (foldr (lambda (_%g4806548068%_
                                                          _%g4806648071%_)
                                                   (cons _%g4806548068%_
                                                         _%g4806648071%_))
                                                 '()
                                                 _%g4796348040%_)))))
                            _%mod4797948037%_
                            _%hd4796948006%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop4797448018%_
                                                    _%target4797148012%_
                                                    '()))
                                                 (_%g4796147985%_
                                                  _%g4796247989%_)))))
                                       (_%g4796147985%_ _%g4796247989%_))))
                               (_%g4796147985%_ _%g4796247989%_))))
                       (_%g4796147985%_ _%g4796247989%_)))))
           (_%g4796048074%_ _%stx47954%_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_%stx48223%_)
       (let* ((_%g4822648250%_
               (lambda (_%g4822748246%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4822748246%_)))
              (_%g4822548376%_
               (lambda (_%g4822748254%_)
                 (if (gx#stx-pair? _%g4822748254%_)
                     (let ((_%e4823048257%_ (gx#syntax-e _%g4822748254%_)))
                       (let ((_%hd4823148261%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4823048257%_)))
                             (_%tl4823248264%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4823048257%_))))
                         (if (gx#stx-pair? _%tl4823248264%_)
                             (let ((_%e4823348267%_
                                    (gx#syntax-e _%tl4823248264%_)))
                               (let ((_%hd4823448271%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4823348267%_)))
                                     (_%tl4823548274%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4823348267%_))))
                                 (if (gx#stx-pair/null? _%tl4823548274%_)
                                     (let ((_g49440_
                                            (gx#syntax-split-splice
                                             _%tl4823548274%_
                                             '0)))
                                       (begin
                                         (let ((_g49441_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49440_)
                                                      (##values-length
                                                       _g49440_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49441_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49441_)))
                                         (let ((_%target4823648277%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49440_ 0)))
                                               (_%tl4823848280%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49440_ 1))))
                                           (if (gx#stx-null? _%tl4823848280%_)
                                               (letrec ((_%loop4823948283%_
                                                         (lambda (_%hd4823748287%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4824348290%_)
                   (if (gx#stx-pair? _%hd4823748287%_)
                       (let ((_%e4824048292%_ (gx#syntax-e _%hd4823748287%_)))
                         (let ((_%lp-hd4824148296%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4824048292%_)))
                               (_%lp-tl4824248299%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4824048292%_))))
                           (_%loop4823948283%_
                            _%lp-tl4824248299%_
                            (cons _%lp-hd4824148296%_ _%id4824348290%_))))
                       (let ((_%id4824448302%_ (reverse _%id4824348290%_)))
                         ((lambda (_%g4822848305%_ _%g4822948307%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4832448327%_
                                                 _%g4832548330%_)
                                          (cons _%g4832448327%_
                                                _%g4832548330%_))
                                        '()
                                        _%g4822848305%_))
                                (let* ((_%keys48341%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4833248335%_
                                                         _%g4833348338%_)
                                                  (cons _%g4833248335%_
                                                        _%g4833348338%_))
                                                '()
                                                _%g4822848305%_)))
                                       (_%keytab48352%_
                                        (let ((_%ht48344%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4834648348%_)
                                             (hash-put!
                                              _%ht48344%_
                                              _%g4834648348%_
                                              '#t))
                                           _%keys48341%_)
                                          _%ht48344%_))
                                       (_%exports48355%_
                                        (gx#core-expand-export-source
                                         _%g4822948307%_))
                                       (_%fold-e48371%_
                                        (letrec ((_%fold-e48358%_
                                                  (lambda (_%out48361%_
                                                           _%r48363%_)
                                                    (if (gx#module-export?
                                                         _%out48361%_)
                                                        (if (hash-get
                                                             _%keytab48352%_
                                                             (gx#module-export-name
                                                              _%out48361%_))
                                                            _%r48363%_
                                                            (cons _%out48361%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r48363%_))
                (if (gx#export-set? _%out48361%_)
                    (foldl _%fold-e48358%_
                           _%r48363%_
                           (gx#export-set-exports _%out48361%_))
                    _%r48363%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e48358%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e48371%_
                                               '()
                                               _%exports48355%_)))
                                (_%g4822648250%_ _%g4822748254%_)))
                          _%id4824448302%_
                          _%hd4823448271%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4823948283%_
                                                  _%target4823648277%_
                                                  '()))
                                               (_%g4822648250%_
                                                _%g4822748254%_)))))
                                     (_%g4822648250%_ _%g4822748254%_))))
                             (_%g4822648250%_ _%g4822748254%_))))
                     (_%g4822648250%_ _%g4822748254%_)))))
         (_%g4822548376%_ _%stx48223%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-from-out|
    (gx#make-export-expander
     (lambda (_%stx48381%_)
       (let* ((_%g4838448408%_
               (lambda (_%g4838548404%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4838548404%_)))
              (_%g4838348538%_
               (lambda (_%g4838548412%_)
                 (if (gx#stx-pair? _%g4838548412%_)
                     (let ((_%e4838848415%_ (gx#syntax-e _%g4838548412%_)))
                       (let ((_%hd4838948419%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4838848415%_)))
                             (_%tl4839048422%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4838848415%_))))
                         (if (gx#stx-pair? _%tl4839048422%_)
                             (let ((_%e4839148425%_
                                    (gx#syntax-e _%tl4839048422%_)))
                               (let ((_%hd4839248429%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4839148425%_)))
                                     (_%tl4839348432%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4839148425%_))))
                                 (if (gx#stx-pair/null? _%tl4839348432%_)
                                     (let ((_g49442_
                                            (gx#syntax-split-splice
                                             _%tl4839348432%_
                                             '0)))
                                       (begin
                                         (let ((_g49443_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49442_)
                                                      (##values-length
                                                       _g49442_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49443_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49443_)))
                                         (let ((_%target4839448435%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49442_ 0)))
                                               (_%tl4839648438%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49442_ 1))))
                                           (if (gx#stx-null? _%tl4839648438%_)
                                               (letrec ((_%loop4839748441%_
                                                         (lambda (_%hd4839548445%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%filter-out4840148448%_)
                   (if (gx#stx-pair? _%hd4839548445%_)
                       (let ((_%e4839848450%_ (gx#syntax-e _%hd4839548445%_)))
                         (let ((_%lp-hd4839948454%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4839848450%_)))
                               (_%lp-tl4840048457%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4839848450%_))))
                           (_%loop4839748441%_
                            _%lp-tl4840048457%_
                            (cons _%lp-hd4839948454%_
                                  _%filter-out4840148448%_))))
                       (let ((_%filter-out4840248460%_
                              (reverse _%filter-out4840148448%_)))
                         ((lambda (_%g4838648463%_ _%g4838748465%_)
                            (let ((_%filtered48483%_ (make-hash-table)))
                              (letrec ((_%fold-out48486%_
                                        (lambda (_%out48528%_ _%r48530%_)
                                          (if (gx#module-export? _%out48528%_)
                                              (cons _%out48528%_ _%r48530%_)
                                              (if (gx#export-set? _%out48528%_)
                                                  (foldl _%fold-out48486%_
                                                         _%r48530%_
                                                         (gx#export-set-exports
                                                          _%out48528%_))
                                                  _%r48530%_)))))
                                (for-each
                                 (lambda (_%src48489%_)
                                   (let* ((_%exports48495%_
                                           (if (gx#identifier? _%src48489%_)
                                               (let ((_%mod48492%_
                                                      (gx#syntax-local-value
                                                       _%src48489%_)))
                                                 (if (gx#module-context?
                                                      _%mod48492%_)
                                                     '#!void
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"not a module context"
                                                      _%src48489%_))
                                                 (gx#module-context-export
                                                  _%mod48492%_))
                                               (gx#core-expand-export-source
                                                _%src48489%_)))
                                          (_%exports48498%_
                                           (foldl _%fold-out48486%_
                                                  '()
                                                  _%exports48495%_)))
                                     (for-each
                                      (lambda (_%out48503%_)
                                        (hash-put!
                                         _%filtered48483%_
                                         (gx#module-export-name _%out48503%_)
                                         '#t))
                                      _%exports48498%_)))
                                 (foldr (lambda (_%g4850548508%_
                                                 _%g4850648511%_)
                                          (cons _%g4850548508%_
                                                _%g4850648511%_))
                                        '()
                                        _%g4838648463%_))
                                (let* ((_%exports48514%_
                                        (gx#core-expand-export-source
                                         _%g4838748465%_))
                                       (_%exports48517%_
                                        (foldl _%fold-out48486%_
                                               '()
                                               _%exports48514%_))
                                       (_%exports48523%_
                                        (filter (lambda (_%out48520%_)
                                                  (not (hash-get
                                                        _%filtered48483%_
                                                        (gx#module-export-name
                                                         _%out48520%_))))
                                                _%exports48517%_)))
                                  (cons 'begin: _%exports48523%_)))))
                          _%filter-out4840248460%_
                          _%hd4839248429%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4839748441%_
                                                  _%target4839448435%_
                                                  '()))
                                               (_%g4838448408%_
                                                _%g4838548412%_)))))
                                     (_%g4838448408%_ _%g4838548412%_))))
                             (_%g4838448408%_ _%g4838548412%_))))
                     (_%g4838448408%_ _%g4838548412%_)))))
         (_%g4838348538%_ _%stx48381%_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_%out48543%_ _%rename48545%_)
      (gx#make-module-export
       (gx#module-export-context _%out48543%_)
       (gx#module-export-key _%out48543%_)
       (gx#module-export-phi _%out48543%_)
       _%rename48545%_
       (gx#module-export-weak? _%out48543%_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_%stx48547%_)
       (let* ((_%g4855048583%_
               (lambda (_%g4855148579%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4855148579%_)))
              (_%g4854948774%_
               (lambda (_%g4855148587%_)
                 (if (gx#stx-pair? _%g4855148587%_)
                     (let ((_%e4855548590%_ (gx#syntax-e _%g4855148587%_)))
                       (let ((_%hd4855648594%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4855548590%_)))
                             (_%tl4855748597%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4855548590%_))))
                         (if (gx#stx-pair? _%tl4855748597%_)
                             (let ((_%e4855848600%_
                                    (gx#syntax-e _%tl4855748597%_)))
                               (let ((_%hd4855948604%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4855848600%_)))
                                     (_%tl4856048607%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4855848600%_))))
                                 (if (gx#stx-pair/null? _%tl4856048607%_)
                                     (let ((_g49444_
                                            (gx#syntax-split-splice
                                             _%tl4856048607%_
                                             '0)))
                                       (begin
                                         (let ((_g49445_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49444_)
                                                      (##values-length
                                                       _g49444_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49445_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49445_)))
                                         (let ((_%target4856148610%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49444_ 0)))
                                               (_%tl4856348613%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49444_ 1))))
                                           (if (gx#stx-null? _%tl4856348613%_)
                                               (letrec ((_%loop4856448616%_
                                                         (lambda (_%hd4856248620%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4856848623%_
                          _%id4856948624%_)
                   (if (gx#stx-pair? _%hd4856248620%_)
                       (let ((_%e4856548626%_ (gx#syntax-e _%hd4856248620%_)))
                         (let ((_%lp-hd4856648630%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4856548626%_)))
                               (_%lp-tl4856748633%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4856548626%_))))
                           (if (gx#stx-pair? _%lp-hd4856648630%_)
                               (let ((_%e4857248636%_
                                      (gx#syntax-e _%lp-hd4856648630%_)))
                                 (let ((_%hd4857348640%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4857248636%_)))
                                       (_%tl4857448643%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4857248636%_))))
                                   (if (gx#stx-pair? _%tl4857448643%_)
                                       (let ((_%e4857548646%_
                                              (gx#syntax-e _%tl4857448643%_)))
                                         (let ((_%hd4857648650%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4857548646%_)))
                                               (_%tl4857748653%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4857548646%_))))
                                           (if (gx#stx-null? _%tl4857748653%_)
                                               (_%loop4856448616%_
                                                _%lp-tl4856748633%_
                                                (cons _%hd4857648650%_
                                                      _%new-id4856848623%_)
                                                (cons _%hd4857348640%_
                                                      _%id4856948624%_))
                                               (_%g4855048583%_
                                                _%g4855148587%_))))
                                       (_%g4855048583%_ _%g4855148587%_))))
                               (_%g4855048583%_ _%g4855148587%_))))
                       (let ((_%new-id4857048656%_
                              (reverse _%new-id4856848623%_))
                             (_%id4857148658%_ (reverse _%id4856948624%_)))
                         ((lambda (_%g4855248660%_
                                   _%g4855348662%_
                                   _%g4855448663%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4868148684%_
                                                      _%g4868248687%_)
                                               (cons _%g4868148684%_
                                                     _%g4868248687%_))
                                             '()
                                             _%g4855348662%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4868948692%_
                                                      _%g4869048695%_)
                                               (cons _%g4868948692%_
                                                     _%g4869048695%_))
                                             '()
                                             _%g4855248660%_)))
                                (let* ((_%keytab48698%_ (make-hash-table))
                                       (_%found48701%_ (make-hash-table))
                                       (_%_48724%_
                                        (for-each
                                         (lambda (_%id48704%_ _%new-id48706%_)
                                           (hash-put!
                                            _%keytab48698%_
                                            (gx#core-identifier-key
                                             _%id48704%_)
                                            (gx#core-identifier-key
                                             _%new-id48706%_)))
                                         (foldr (lambda (_%g4870748710%_
                                                         _%g4870848713%_)
                                                  (cons _%g4870748710%_
                                                        _%g4870848713%_))
                                                '()
                                                _%g4855348662%_)
                                         (foldr (lambda (_%g4871548718%_
                                                         _%g4871648721%_)
                                                  (cons _%g4871548718%_
                                                        _%g4871648721%_))
                                                '()
                                                _%g4855248660%_)))
                                       (_%exports48727%_
                                        (gx#core-expand-export-source
                                         _%g4855448663%_))
                                       (_%fold-e48755%_
                                        (letrec ((_%fold-e48730%_
                                                  (lambda (_%out48733%_
                                                           _%r48735%_)
                                                    (if (gx#module-export?
                                                         _%out48733%_)
                                                        (let* ((_%name48739%_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out48733%_))
                       (_%$e48742%_ (hash-get _%keytab48698%_ _%name48739%_)))
                  (if _%$e48742%_
                      ((lambda (_%rename48746%_)
                         (hash-put! _%found48701%_ _%name48739%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                _%out48733%_
                                _%rename48746%_)
                               _%r48735%_))
                       _%$e48742%_)
                      (cons _%out48733%_ _%r48735%_)))
                (if (gx#export-set? _%out48733%_)
                    (foldl _%fold-e48730%_
                           _%r48735%_
                           (gx#export-set-exports _%out48733%_))
                    (cons _%out48733%_ _%r48735%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e48730%_))
                                       (_%new-exports48758%_
                                        (foldl _%fold-e48755%_
                                               '()
                                               _%exports48727%_)))
                                  (for-each
                                   (lambda (_%id48763%_)
                                     (if (hash-get
                                          _%found48701%_
                                          (gx#core-identifier-key _%id48763%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _%stx48547%_
                                          _%id48763%_)))
                                   (foldr (lambda (_%g4876548768%_
                                                   _%g4876648771%_)
                                            (cons _%g4876548768%_
                                                  _%g4876648771%_))
                                          '()
                                          _%g4855348662%_))
                                  (cons 'begin: _%new-exports48758%_))
                                (_%g4855048583%_ _%g4855148587%_)))
                          _%new-id4857048656%_
                          _%id4857148658%_
                          _%hd4855948604%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4856448616%_
                                                  _%target4856148610%_
                                                  '()
                                                  '()))
                                               (_%g4855048583%_
                                                _%g4855148587%_)))))
                                     (_%g4855048583%_ _%g4855148587%_))))
                             (_%g4855048583%_ _%g4855148587%_))))
                     (_%g4855048583%_ _%g4855148587%_)))))
         (_%g4854948774%_ _%stx48547%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_%stx48779%_)
       (let* ((_%g4878248800%_
               (lambda (_%g4878348796%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4878348796%_)))
              (_%g4878148885%_
               (lambda (_%g4878348804%_)
                 (if (gx#stx-pair? _%g4878348804%_)
                     (let ((_%e4878648807%_ (gx#syntax-e _%g4878348804%_)))
                       (let ((_%hd4878748811%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4878648807%_)))
                             (_%tl4878848814%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4878648807%_))))
                         (if (gx#stx-pair? _%tl4878848814%_)
                             (let ((_%e4878948817%_
                                    (gx#syntax-e _%tl4878848814%_)))
                               (let ((_%hd4879048821%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4878948817%_)))
                                     (_%tl4879148824%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4878948817%_))))
                                 (if (gx#stx-pair? _%tl4879148824%_)
                                     (let ((_%e4879248827%_
                                            (gx#syntax-e _%tl4879148824%_)))
                                       (let ((_%hd4879348831%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4879248827%_)))
                                             (_%tl4879448834%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4879248827%_))))
                                         (if (gx#stx-null? _%tl4879448834%_)
                                             ((lambda (_%g4878448837%_
                                                       _%g4878548839%_)
                                                (if (gx#identifier?
                                                     _%g4878448837%_)
                                                    (let* ((_%pre48855%_
                                                            (gx#stx-e
                                                             _%g4878448837%_))
                                                           (_%exports48858%_
                                                            (gx#core-expand-export-source
                                                             _%g4878548839%_))
                                                           (_%rename-e48864%_
                                                            (lambda (_%name48861%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name48861%_
                                                               _%pre48855%_)))
                                                           (_%fold-e48880%_
                                                            (letrec ((_%fold-e48867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%out48870%_ _%r48872%_)
                                (if (gx#module-export? _%out48870%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                           _%out48870%_
                                           (_%rename-e48864%_
                                            (gx#module-export-name
                                             _%out48870%_)))
                                          _%r48872%_)
                                    (if (gx#export-set? _%out48870%_)
                                        (foldl _%fold-e48867%_
                                               _%r48872%_
                                               (gx#export-set-exports
                                                _%out48870%_))
                                        (cons _%out48870%_ _%r48872%_))))))
                      _%fold-e48867%_)))
              (cons 'begin: (foldl _%fold-e48880%_ '() _%exports48858%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4878248800%_
                                                     _%g4878348804%_)))
                                              _%hd4879348831%_
                                              _%hd4879048821%_)
                                             (_%g4878248800%_
                                              _%g4878348804%_))))
                                     (_%g4878248800%_ _%g4878348804%_))))
                             (_%g4878248800%_ _%g4878348804%_))))
                     (_%g4878248800%_ _%g4878348804%_)))))
         (_%g4878148885%_ _%stx48779%_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_%stx48889%_)
       (letrec ((_%identifiers48892%_
                 (lambda (_%id49120%_ _%unchecked?49122%_)
                   (let ((_%info49124%_
                          (gx#syntax-local-value _%id49120%_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%info49124%_))
                         (cons _%id49120%_
                               (cons (let ((__obj49421 _%info49124%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj49421
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj49421
                                              '4
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj49421
                                            'type-descriptor)))
                                     (foldr cons
                                            (cons (let ((__obj49422
                                                         _%info49124%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj49422
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj49422
                                                           '15
                                                           '#f
                                                           '#f))
                                                        (unchecked-slot-ref
                                                         __obj49422
                                                         'predicate)))
                                                  (foldr cons
                                                         (foldr cons
                                                                (if _%unchecked?49122%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons
                                   (map cdr
                                        (let ((__obj49423 _%info49124%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj49423
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj49423
                                                 '19
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj49423
                                               'unchecked-mutators))))
                                   (map cdr
                                        (let ((__obj49424 _%info49124%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj49424
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj49424
                                                 '18
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj49424
                                               'unchecked-accessors)))))
                            '())
                        (map cdr
                             (let ((__obj49425 _%info49124%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj49425
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj49425
                                      '17
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj49425
                                    'mutators)))))
                 (map cdr
                      (let ((__obj49426 _%info49124%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj49426
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj49426
                               '16
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj49426 'accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_%ctor49127%_
                                                   (let ((__obj49427
                                                          _%info49124%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj49427
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj49427
                                                            '14
                                                            '#f
                                                            '#f))
                                                         (unchecked-slot-ref
                                                          __obj49427
                                                          'constructor)))))
                                              (if _%ctor49127%_
                                                  (cons _%ctor49127%_ '())
                                                  '())))))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _%stx48889%_
                          _%id49120%_))))))
         (let* ((_%__stx4936249363%_ _%stx48889%_)
                (_%g4889648937%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%__stx4936249363%_))))
           (let ((_%__kont4936549366%_
                  (lambda (_%g4889849081%_ _%g4889949083%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4910249104%_)
                              (_%identifiers48892%_
                               _%g4910249104%_
                               (gx#stx-e _%g4889949083%_)))
                            (foldr (lambda (_%g4910749110%_ _%g4910849113%_)
                                     (cons _%g4910749110%_ _%g4910849113%_))
                                   '()
                                   _%g4889849081%_))))))
                 (_%__kont4936949370%_
                  (lambda (_%g4891948982%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4899849000%_)
                              (_%identifiers48892%_ _%g4899849000%_ '#f))
                            (foldr (lambda (_%g4900349006%_ _%g4900449009%_)
                                     (cons _%g4900349006%_ _%g4900449009%_))
                                   '()
                                   _%g4891948982%_)))))))
             (let* ((_%__match4941949420%_
                     (lambda (_%e4892048944%_
                              _%hd4892148948%_
                              _%tl4892248951%_
                              _%__splice4937149372%_
                              _%target4892348954%_
                              _%tl4892548957%_)
                       (letrec ((_%loop4892648960%_
                                 (lambda (_%hd4892448964%_ _%id4893048967%_)
                                   (if (gx#stx-pair? _%hd4892448964%_)
                                       (let ((_%e4892748969%_
                                              (gx#syntax-e _%hd4892448964%_)))
                                         (let ((_%lp-tl4892948976%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4892748969%_)))
                                               (_%lp-hd4892848973%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4892748969%_))))
                                           (_%loop4892648960%_
                                            _%lp-tl4892948976%_
                                            (cons _%lp-hd4892848973%_
                                                  _%id4893048967%_))))
                                       (let ((_%id4893148979%_
                                              (reverse _%id4893048967%_)))
                                         (_%__kont4936949370%_
                                          _%id4893148979%_))))))
                         (_%loop4892648960%_ _%target4892348954%_ '()))))
                    (_%__match4940549406%_
                     (lambda (_%e4890049019%_
                              _%hd4890149023%_
                              _%tl4890249026%_
                              _%e4890349029%_
                              _%hd4890449033%_
                              _%tl4890549036%_
                              _%e4890649039%_
                              _%e4890749043%_
                              _%hd4890849047%_
                              _%tl4890949050%_
                              _%__splice4936749368%_
                              _%target4891049053%_
                              _%tl4891249056%_)
                       (letrec ((_%loop4891349059%_
                                 (lambda (_%hd4891149063%_ _%id4891749066%_)
                                   (if (gx#stx-pair? _%hd4891149063%_)
                                       (let ((_%e4891449068%_
                                              (gx#syntax-e _%hd4891149063%_)))
                                         (let ((_%lp-tl4891649075%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4891449068%_)))
                                               (_%lp-hd4891549072%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4891449068%_))))
                                           (_%loop4891349059%_
                                            _%lp-tl4891649075%_
                                            (cons _%lp-hd4891549072%_
                                                  _%id4891749066%_))))
                                       (let ((_%id4891849078%_
                                              (reverse _%id4891749066%_)))
                                         (_%__kont4936549366%_
                                          _%id4891849078%_
                                          _%hd4890849047%_))))))
                         (_%loop4891349059%_ _%target4891049053%_ '())))))
               (if (gx#stx-pair? _%__stx4936249363%_)
                   (let ((_%e4890049019%_ (gx#syntax-e _%__stx4936249363%_)))
                     (let ((_%tl4890249026%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4890049019%_)))
                           (_%hd4890149023%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4890049019%_))))
                       (if (gx#stx-pair? _%tl4890249026%_)
                           (let ((_%e4890349029%_
                                  (gx#syntax-e _%tl4890249026%_)))
                             (let ((_%tl4890549036%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4890349029%_)))
                                   (_%hd4890449033%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4890349029%_))))
                               (if (gx#stx-datum? _%hd4890449033%_)
                                   (let ((_%e4890649039%_
                                          (gx#stx-e _%hd4890449033%_)))
                                     (if (equal? _%e4890649039%_ 'unchecked:)
                                         (if (gx#stx-pair? _%tl4890549036%_)
                                             (let ((_%e4890749043%_
                                                    (gx#syntax-e
                                                     _%tl4890549036%_)))
                                               (let ((_%tl4890949050%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4890749043%_)))
                                                     (_%hd4890849047%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4890749043%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%tl4890949050%_)
                                                     (let ((_%__splice4936749368%_
                                                            (gx#syntax-split-splice->vector
                                                             _%tl4890949050%_
                                                             '0)))
                                                       (let ((_%tl4891249056%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4936749368%_ '1)))
                     (_%target4891049053%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4936749368%_ '0))))
                 (if (gx#stx-null? _%tl4891249056%_)
                     (_%__match4940549406%_
                      _%e4890049019%_
                      _%hd4890149023%_
                      _%tl4890249026%_
                      _%e4890349029%_
                      _%hd4890449033%_
                      _%tl4890549036%_
                      _%e4890649039%_
                      _%e4890749043%_
                      _%hd4890849047%_
                      _%tl4890949050%_
                      _%__splice4936749368%_
                      _%target4891049053%_
                      _%tl4891249056%_)
                     (if (gx#stx-pair/null? _%tl4890249026%_)
                         (let ((_%__splice4937149372%_
                                (gx#syntax-split-splice->vector
                                 _%tl4890249026%_
                                 '0)))
                           (let ((_%tl4892548957%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4937149372%_ '1)))
                                 (_%target4892348954%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4937149372%_ '0))))
                             (if (gx#stx-null? _%tl4892548957%_)
                                 (_%__match4941949420%_
                                  _%e4890049019%_
                                  _%hd4890149023%_
                                  _%tl4890249026%_
                                  _%__splice4937149372%_
                                  _%target4892348954%_
                                  _%tl4892548957%_)
                                 (let ()
                                   (declare (not safe))
                                   (_%g4889648937%_)))))
                         (let () (declare (not safe)) (_%g4889648937%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _%tl4890249026%_)
                                                         (let ((_%__splice4937149372%_
                                                                (gx#syntax-split-splice->vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl4890249026%_
                         '0)))
                   (let ((_%tl4892548957%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4937149372%_ '1)))
                         (_%target4892348954%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4937149372%_ '0))))
                     (if (gx#stx-null? _%tl4892548957%_)
                         (_%__match4941949420%_
                          _%e4890049019%_
                          _%hd4890149023%_
                          _%tl4890249026%_
                          _%__splice4937149372%_
                          _%target4892348954%_
                          _%tl4892548957%_)
                         (let () (declare (not safe)) (_%g4889648937%_)))))
                 (let () (declare (not safe)) (_%g4889648937%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _%tl4890249026%_)
                                                 (let ((_%__splice4937149372%_
                                                        (gx#syntax-split-splice->vector
                                                         _%tl4890249026%_
                                                         '0)))
                                                   (let ((_%tl4892548957%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4937149372%_
                                                             '1)))
                                                         (_%target4892348954%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4937149372%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4892548957%_)
                                                         (_%__match4941949420%_
                                                          _%e4890049019%_
                                                          _%hd4890149023%_
                                                          _%tl4890249026%_
                                                          _%__splice4937149372%_
                                                          _%target4892348954%_
                                                          _%tl4892548957%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4889648937%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4889648937%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4890249026%_)
                                             (let ((_%__splice4937149372%_
                                                    (gx#syntax-split-splice->vector
                                                     _%tl4890249026%_
                                                     '0)))
                                               (let ((_%tl4892548957%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4937149372%_
                                                         '1)))
                                                     (_%target4892348954%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4937149372%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4892548957%_)
                                                     (_%__match4941949420%_
                                                      _%e4890049019%_
                                                      _%hd4890149023%_
                                                      _%tl4890249026%_
                                                      _%__splice4937149372%_
                                                      _%target4892348954%_
                                                      _%tl4892548957%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4889648937%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4889648937%_)))))
                                   (if (gx#stx-pair/null? _%tl4890249026%_)
                                       (let ((_%__splice4937149372%_
                                              (gx#syntax-split-splice->vector
                                               _%tl4890249026%_
                                               '0)))
                                         (let ((_%tl4892548957%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4937149372%_
                                                   '1)))
                                               (_%target4892348954%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4937149372%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4892548957%_)
                                               (_%__match4941949420%_
                                                _%e4890049019%_
                                                _%hd4890149023%_
                                                _%tl4890249026%_
                                                _%__splice4937149372%_
                                                _%target4892348954%_
                                                _%tl4892548957%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4889648937%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4889648937%_))))))
                           (if (gx#stx-pair/null? _%tl4890249026%_)
                               (let ((_%__splice4937149372%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4890249026%_
                                       '0)))
                                 (let ((_%tl4892548957%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4937149372%_
                                           '1)))
                                       (_%target4892348954%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4937149372%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4892548957%_)
                                       (_%__match4941949420%_
                                        _%e4890049019%_
                                        _%hd4890149023%_
                                        _%tl4890249026%_
                                        _%__splice4937149372%_
                                        _%target4892348954%_
                                        _%tl4892548957%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4889648937%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4889648937%_))))))
                   (let () (declare (not safe)) (_%g4889648937%_)))))))))))
