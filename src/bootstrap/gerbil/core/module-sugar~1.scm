(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_%$stx46447%_)
      (let* ((_%__stx4923149232%_ _%$stx46447%_)
             (_%$%g4645246471%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4923149232%_))))
        (let ((_%__kont4923449235%_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (_%__kont4923649237%_
               (lambda (_%$%g4645746498%_ _%$%g4645846500%_ _%$%g4645946501%_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _%$%g4645846500%_
                                   (cons (cons _%$%g4645946501%_
                                               _%$%g4645746498%_)
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _%$%g4645846500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? _%__stx4923149232%_)
              (let ((_%$%e4645446523%_ (gx#syntax-e _%__stx4923149232%_)))
                (let ((_%$%tl4645646530%_
                       (let () (declare (not safe)) (##cdr _%$%e4645446523%_)))
                      (_%$%hd4645546527%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e4645446523%_))))
                  (if (gx#stx-null? _%$%tl4645646530%_)
                      (_%__kont4923449235%_)
                      (if (gx#stx-pair? _%$%tl4645646530%_)
                          (let ((_%$%e4646346488%_
                                 (gx#syntax-e _%$%tl4645646530%_)))
                            (let ((_%$%tl4646546495%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e4646346488%_)))
                                  (_%$%hd4646446492%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e4646346488%_))))
                              (_%__kont4923649237%_
                               _%$%tl4646546495%_
                               _%$%hd4646446492%_
                               _%$%hd4645546527%_)))
                          (let () (declare (not safe)) (_%$%g4645246471%_))))))
              (let () (declare (not safe)) (_%$%g4645246471%_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_%$stx46541%_)
      (let* ((_%__stx4926149262%_ _%$stx46541%_)
             (_%$%g4654646586%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4926149262%_))))
        (let ((_%__kont4926449265%_
               (lambda (_%$%g4654846722%_ _%$%g4654946724%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%$%g4654946724%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _%$%g4654846722%_ '()))
                                   '())))))
              (_%__kont4926649267%_
               (lambda (_%$%g4655946651%_
                        _%$%g4656046653%_
                        _%$%g4656146654%_
                        _%$%g4656246655%_)
                 (cons _%$%g4656246655%_
                       (cons _%$%g4656146654%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%$%g4656046653%_
                                               (foldr (lambda (_%$%g4667646679%_
                                                               _%$%g4667746682%_)
                                                        (cons _%$%g4667646679%_
                                                              _%$%g4667746682%_))
                                                      '()
                                                      _%$%g4655946651%_)))
                                   '()))))))
          (let* ((_%__match4931649317%_
                  (lambda (_%$%e4656346593%_
                           _%$%hd4656446597%_
                           _%$%tl4656546600%_
                           _%$%e4656646603%_
                           _%$%hd4656746607%_
                           _%$%tl4656846610%_
                           _%$%e4656946613%_
                           _%$%hd4657046617%_
                           _%$%tl4657146620%_
                           _%__splice4926849269%_
                           _%$%target4657246623%_
                           _%$%tl4657446626%_)
                    (letrec ((_%$%loop4657546629%_
                              (lambda (_%$%hd4657346633%_ _%$%body4657946636%_)
                                (if (gx#stx-pair? _%$%hd4657346633%_)
                                    (let ((_%$%e4657646638%_
                                           (gx#syntax-e _%$%hd4657346633%_)))
                                      (let ((_%$%lp-tl4657846645%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4657646638%_)))
                                            (_%$%lp-hd4657746642%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4657646638%_))))
                                        (_%$%loop4657546629%_
                                         _%$%lp-tl4657846645%_
                                         (cons _%$%lp-hd4657746642%_
                                               _%$%body4657946636%_))))
                                    (let ((_%$%body4658046648%_
                                           (reverse _%$%body4657946636%_)))
                                      (let ((_%$%g4655946651%_
                                             _%$%body4658046648%_)
                                            (_%$%g4656046653%_
                                             _%$%tl4657146620%_)
                                            (_%$%g4656146654%_
                                             _%$%hd4657046617%_)
                                            (_%$%g4656246655%_
                                             _%$%hd4656446597%_))
                                        (if (gx#identifier? _%$%g4656146654%_)
                                            (_%__kont4926649267%_
                                             _%$%g4655946651%_
                                             _%$%g4656046653%_
                                             _%$%g4656146654%_
                                             _%$%g4656246655%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g4654646586%_)))))))))
                      (_%$%loop4657546629%_ _%$%target4657246623%_ '()))))
                 (_%__match4929049291%_
                  (lambda (_%$%e4655046692%_
                           _%$%hd4655146696%_
                           _%$%tl4655246699%_
                           _%$%e4655346702%_
                           _%$%hd4655446706%_
                           _%$%tl4655546709%_
                           _%$%e4655646712%_
                           _%$%hd4655746716%_
                           _%$%tl4655846719%_)
                    (let ((_%$%g4654846722%_ _%$%hd4655746716%_)
                          (_%$%g4654946724%_ _%$%hd4655446706%_))
                      (if (gx#identifier? _%$%g4654946724%_)
                          (_%__kont4926449265%_
                           _%$%g4654846722%_
                           _%$%g4654946724%_)
                          (if (gx#stx-pair? _%$%hd4655446706%_)
                              (let ((_%$%e4656946613%_
                                     (gx#syntax-e _%$%hd4655446706%_)))
                                (let ((_%$%tl4657146620%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4656946613%_)))
                                      (_%$%hd4657046617%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4656946613%_))))
                                  (if (gx#stx-pair/null? _%$%tl4655546709%_)
                                      (let ((_%__splice4926849269%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl4655546709%_
                                              '0)))
                                        (let ((_%$%tl4657446626%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4926849269%_
                                                  '1)))
                                              (_%$%target4657246623%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4926849269%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl4657446626%_)
                                              (_%__match4931649317%_
                                               _%$%e4655046692%_
                                               _%$%hd4655146696%_
                                               _%$%tl4655246699%_
                                               _%$%e4655346702%_
                                               _%$%hd4655446706%_
                                               _%$%tl4655546709%_
                                               _%$%e4656946613%_
                                               _%$%hd4657046617%_
                                               _%$%tl4657146620%_
                                               _%__splice4926849269%_
                                               _%$%target4657246623%_
                                               _%$%tl4657446626%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g4654646586%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g4654646586%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g4654646586%_))))))))
            (if (gx#stx-pair? _%__stx4926149262%_)
                (let ((_%$%e4655046692%_ (gx#syntax-e _%__stx4926149262%_)))
                  (let ((_%$%tl4655246699%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4655046692%_)))
                        (_%$%hd4655146696%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4655046692%_))))
                    (if (gx#stx-pair? _%$%tl4655246699%_)
                        (let ((_%$%e4655346702%_
                               (gx#syntax-e _%$%tl4655246699%_)))
                          (let ((_%$%tl4655546709%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4655346702%_)))
                                (_%$%hd4655446706%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4655346702%_))))
                            (if (gx#stx-pair? _%$%tl4655546709%_)
                                (let ((_%$%e4655646712%_
                                       (gx#syntax-e _%$%tl4655546709%_)))
                                  (let ((_%$%tl4655846719%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4655646712%_)))
                                        (_%$%hd4655746716%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4655646712%_))))
                                    (if (gx#stx-null? _%$%tl4655846719%_)
                                        (_%__match4929049291%_
                                         _%$%e4655046692%_
                                         _%$%hd4655146696%_
                                         _%$%tl4655246699%_
                                         _%$%e4655346702%_
                                         _%$%hd4655446706%_
                                         _%$%tl4655546709%_
                                         _%$%e4655646712%_
                                         _%$%hd4655746716%_
                                         _%$%tl4655846719%_)
                                        (if (gx#stx-pair? _%$%hd4655446706%_)
                                            (let ((_%$%e4656946613%_
                                                   (gx#syntax-e
                                                    _%$%hd4655446706%_)))
                                              (let ((_%$%tl4657146620%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4656946613%_)))
                                                    (_%$%hd4657046617%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4656946613%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4655546709%_)
                                                    (let ((_%__splice4926849269%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4655546709%_
                                                            '0)))
                                                      (let ((_%$%tl4657446626%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4926849269%_ '1)))
                    (_%$%target4657246623%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4926849269%_ '0))))
                (if (gx#stx-null? _%$%tl4657446626%_)
                    (_%__match4931649317%_
                     _%$%e4655046692%_
                     _%$%hd4655146696%_
                     _%$%tl4655246699%_
                     _%$%e4655346702%_
                     _%$%hd4655446706%_
                     _%$%tl4655546709%_
                     _%$%e4656946613%_
                     _%$%hd4657046617%_
                     _%$%tl4657146620%_
                     _%__splice4926849269%_
                     _%$%target4657246623%_
                     _%$%tl4657446626%_)
                    (let () (declare (not safe)) (_%$%g4654646586%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g4654646586%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g4654646586%_))))))
                                (if (gx#stx-pair? _%$%hd4655446706%_)
                                    (let ((_%$%e4656946613%_
                                           (gx#syntax-e _%$%hd4655446706%_)))
                                      (let ((_%$%tl4657146620%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4656946613%_)))
                                            (_%$%hd4657046617%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4656946613%_))))
                                        (if (gx#stx-pair/null?
                                             _%$%tl4655546709%_)
                                            (let ((_%__splice4926849269%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4655546709%_
                                                    '0)))
                                              (let ((_%$%tl4657446626%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4926849269%_
                                                        '1)))
                                                    (_%$%target4657246623%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4926849269%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4657446626%_)
                                                    (_%__match4931649317%_
                                                     _%$%e4655046692%_
                                                     _%$%hd4655146696%_
                                                     _%$%tl4655246699%_
                                                     _%$%e4655346702%_
                                                     _%$%hd4655446706%_
                                                     _%$%tl4655546709%_
                                                     _%$%e4656946613%_
                                                     _%$%hd4657046617%_
                                                     _%$%tl4657146620%_
                                                     _%__splice4926849269%_
                                                     _%$%target4657246623%_
                                                     _%$%tl4657446626%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g4654646586%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g4654646586%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g4654646586%_))))))
                        (let () (declare (not safe)) (_%$%g4654646586%_)))))
                (let () (declare (not safe)) (_%$%g4654646586%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_%$stx46744%_)
      (let* ((_%__stx4931949320%_ _%$stx46744%_)
             (_%$%g4674946789%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4931949320%_))))
        (let ((_%__kont4932249323%_
               (lambda (_%$%g4675146925%_ _%$%g4675246927%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%$%g4675246927%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _%$%g4675146925%_ '()))
                                   '())))))
              (_%__kont4932449325%_
               (lambda (_%$%g4676246854%_
                        _%$%g4676346856%_
                        _%$%g4676446857%_
                        _%$%g4676546858%_)
                 (cons _%$%g4676546858%_
                       (cons _%$%g4676446857%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%$%g4676346856%_
                                               (foldr (lambda (_%$%g4687946882%_
                                                               _%$%g4688046885%_)
                                                        (cons _%$%g4687946882%_
                                                              _%$%g4688046885%_))
                                                      '()
                                                      _%$%g4676246854%_)))
                                   '()))))))
          (let* ((_%__match4937449375%_
                  (lambda (_%$%e4676646796%_
                           _%$%hd4676746800%_
                           _%$%tl4676846803%_
                           _%$%e4676946806%_
                           _%$%hd4677046810%_
                           _%$%tl4677146813%_
                           _%$%e4677246816%_
                           _%$%hd4677346820%_
                           _%$%tl4677446823%_
                           _%__splice4932649327%_
                           _%$%target4677546826%_
                           _%$%tl4677746829%_)
                    (letrec ((_%$%loop4677846832%_
                              (lambda (_%$%hd4677646836%_ _%$%body4678246839%_)
                                (if (gx#stx-pair? _%$%hd4677646836%_)
                                    (let ((_%$%e4677946841%_
                                           (gx#syntax-e _%$%hd4677646836%_)))
                                      (let ((_%$%lp-tl4678146848%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4677946841%_)))
                                            (_%$%lp-hd4678046845%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4677946841%_))))
                                        (_%$%loop4677846832%_
                                         _%$%lp-tl4678146848%_
                                         (cons _%$%lp-hd4678046845%_
                                               _%$%body4678246839%_))))
                                    (let ((_%$%body4678346851%_
                                           (reverse _%$%body4678246839%_)))
                                      (let ((_%$%g4676246854%_
                                             _%$%body4678346851%_)
                                            (_%$%g4676346856%_
                                             _%$%tl4677446823%_)
                                            (_%$%g4676446857%_
                                             _%$%hd4677346820%_)
                                            (_%$%g4676546858%_
                                             _%$%hd4676746800%_))
                                        (if (gx#identifier? _%$%g4676446857%_)
                                            (_%__kont4932449325%_
                                             _%$%g4676246854%_
                                             _%$%g4676346856%_
                                             _%$%g4676446857%_
                                             _%$%g4676546858%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g4674946789%_)))))))))
                      (_%$%loop4677846832%_ _%$%target4677546826%_ '()))))
                 (_%__match4934849349%_
                  (lambda (_%$%e4675346895%_
                           _%$%hd4675446899%_
                           _%$%tl4675546902%_
                           _%$%e4675646905%_
                           _%$%hd4675746909%_
                           _%$%tl4675846912%_
                           _%$%e4675946915%_
                           _%$%hd4676046919%_
                           _%$%tl4676146922%_)
                    (let ((_%$%g4675146925%_ _%$%hd4676046919%_)
                          (_%$%g4675246927%_ _%$%hd4675746909%_))
                      (if (gx#identifier? _%$%g4675246927%_)
                          (_%__kont4932249323%_
                           _%$%g4675146925%_
                           _%$%g4675246927%_)
                          (if (gx#stx-pair? _%$%hd4675746909%_)
                              (let ((_%$%e4677246816%_
                                     (gx#syntax-e _%$%hd4675746909%_)))
                                (let ((_%$%tl4677446823%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4677246816%_)))
                                      (_%$%hd4677346820%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4677246816%_))))
                                  (if (gx#stx-pair/null? _%$%tl4675846912%_)
                                      (let ((_%__splice4932649327%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl4675846912%_
                                              '0)))
                                        (let ((_%$%tl4677746829%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4932649327%_
                                                  '1)))
                                              (_%$%target4677546826%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4932649327%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl4677746829%_)
                                              (_%__match4937449375%_
                                               _%$%e4675346895%_
                                               _%$%hd4675446899%_
                                               _%$%tl4675546902%_
                                               _%$%e4675646905%_
                                               _%$%hd4675746909%_
                                               _%$%tl4675846912%_
                                               _%$%e4677246816%_
                                               _%$%hd4677346820%_
                                               _%$%tl4677446823%_
                                               _%__splice4932649327%_
                                               _%$%target4677546826%_
                                               _%$%tl4677746829%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g4674946789%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g4674946789%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g4674946789%_))))))))
            (if (gx#stx-pair? _%__stx4931949320%_)
                (let ((_%$%e4675346895%_ (gx#syntax-e _%__stx4931949320%_)))
                  (let ((_%$%tl4675546902%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4675346895%_)))
                        (_%$%hd4675446899%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4675346895%_))))
                    (if (gx#stx-pair? _%$%tl4675546902%_)
                        (let ((_%$%e4675646905%_
                               (gx#syntax-e _%$%tl4675546902%_)))
                          (let ((_%$%tl4675846912%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4675646905%_)))
                                (_%$%hd4675746909%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4675646905%_))))
                            (if (gx#stx-pair? _%$%tl4675846912%_)
                                (let ((_%$%e4675946915%_
                                       (gx#syntax-e _%$%tl4675846912%_)))
                                  (let ((_%$%tl4676146922%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4675946915%_)))
                                        (_%$%hd4676046919%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4675946915%_))))
                                    (if (gx#stx-null? _%$%tl4676146922%_)
                                        (_%__match4934849349%_
                                         _%$%e4675346895%_
                                         _%$%hd4675446899%_
                                         _%$%tl4675546902%_
                                         _%$%e4675646905%_
                                         _%$%hd4675746909%_
                                         _%$%tl4675846912%_
                                         _%$%e4675946915%_
                                         _%$%hd4676046919%_
                                         _%$%tl4676146922%_)
                                        (if (gx#stx-pair? _%$%hd4675746909%_)
                                            (let ((_%$%e4677246816%_
                                                   (gx#syntax-e
                                                    _%$%hd4675746909%_)))
                                              (let ((_%$%tl4677446823%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4677246816%_)))
                                                    (_%$%hd4677346820%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4677246816%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4675846912%_)
                                                    (let ((_%__splice4932649327%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4675846912%_
                                                            '0)))
                                                      (let ((_%$%tl4677746829%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4932649327%_ '1)))
                    (_%$%target4677546826%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4932649327%_ '0))))
                (if (gx#stx-null? _%$%tl4677746829%_)
                    (_%__match4937449375%_
                     _%$%e4675346895%_
                     _%$%hd4675446899%_
                     _%$%tl4675546902%_
                     _%$%e4675646905%_
                     _%$%hd4675746909%_
                     _%$%tl4675846912%_
                     _%$%e4677246816%_
                     _%$%hd4677346820%_
                     _%$%tl4677446823%_
                     _%__splice4932649327%_
                     _%$%target4677546826%_
                     _%$%tl4677746829%_)
                    (let () (declare (not safe)) (_%$%g4674946789%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g4674946789%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g4674946789%_))))))
                                (if (gx#stx-pair? _%$%hd4675746909%_)
                                    (let ((_%$%e4677246816%_
                                           (gx#syntax-e _%$%hd4675746909%_)))
                                      (let ((_%$%tl4677446823%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4677246816%_)))
                                            (_%$%hd4677346820%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4677246816%_))))
                                        (if (gx#stx-pair/null?
                                             _%$%tl4675846912%_)
                                            (let ((_%__splice4932649327%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4675846912%_
                                                    '0)))
                                              (let ((_%$%tl4677746829%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4932649327%_
                                                        '1)))
                                                    (_%$%target4677546826%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4932649327%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4677746829%_)
                                                    (_%__match4937449375%_
                                                     _%$%e4675346895%_
                                                     _%$%hd4675446899%_
                                                     _%$%tl4675546902%_
                                                     _%$%e4675646905%_
                                                     _%$%hd4675746909%_
                                                     _%$%tl4675846912%_
                                                     _%$%e4677246816%_
                                                     _%$%hd4677346820%_
                                                     _%$%tl4677446823%_
                                                     _%__splice4932649327%_
                                                     _%$%target4677546826%_
                                                     _%$%tl4677746829%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g4674946789%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g4674946789%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g4674946789%_))))))
                        (let () (declare (not safe)) (_%$%g4674946789%_)))))
                (let () (declare (not safe)) (_%$%g4674946789%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_%$stx46947%_)
      (let* ((_%__stx4937749378%_ _%$stx46947%_)
             (_%$%g4695246992%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4937749378%_))))
        (let ((_%__kont4938049381%_
               (lambda (_%$%g4695447128%_ _%$%g4695547130%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%$%g4695547130%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _%$%g4695447128%_ '()))
                                   '())))))
              (_%__kont4938249383%_
               (lambda (_%$%g4696547057%_
                        _%$%g4696647059%_
                        _%$%g4696747060%_
                        _%$%g4696847061%_)
                 (cons _%$%g4696847061%_
                       (cons _%$%g4696747060%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%$%g4696647059%_
                                               (foldr (lambda (_%$%g4708247085%_
                                                               _%$%g4708347088%_)
                                                        (cons _%$%g4708247085%_
                                                              _%$%g4708347088%_))
                                                      '()
                                                      _%$%g4696547057%_)))
                                   '()))))))
          (let* ((_%__match4943249433%_
                  (lambda (_%$%e4696946999%_
                           _%$%hd4697047003%_
                           _%$%tl4697147006%_
                           _%$%e4697247009%_
                           _%$%hd4697347013%_
                           _%$%tl4697447016%_
                           _%$%e4697547019%_
                           _%$%hd4697647023%_
                           _%$%tl4697747026%_
                           _%__splice4938449385%_
                           _%$%target4697847029%_
                           _%$%tl4698047032%_)
                    (letrec ((_%$%loop4698147035%_
                              (lambda (_%$%hd4697947039%_ _%$%body4698547042%_)
                                (if (gx#stx-pair? _%$%hd4697947039%_)
                                    (let ((_%$%e4698247044%_
                                           (gx#syntax-e _%$%hd4697947039%_)))
                                      (let ((_%$%lp-tl4698447051%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4698247044%_)))
                                            (_%$%lp-hd4698347048%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4698247044%_))))
                                        (_%$%loop4698147035%_
                                         _%$%lp-tl4698447051%_
                                         (cons _%$%lp-hd4698347048%_
                                               _%$%body4698547042%_))))
                                    (let ((_%$%body4698647054%_
                                           (reverse _%$%body4698547042%_)))
                                      (let ((_%$%g4696547057%_
                                             _%$%body4698647054%_)
                                            (_%$%g4696647059%_
                                             _%$%tl4697747026%_)
                                            (_%$%g4696747060%_
                                             _%$%hd4697647023%_)
                                            (_%$%g4696847061%_
                                             _%$%hd4697047003%_))
                                        (if (gx#identifier? _%$%g4696747060%_)
                                            (_%__kont4938249383%_
                                             _%$%g4696547057%_
                                             _%$%g4696647059%_
                                             _%$%g4696747060%_
                                             _%$%g4696847061%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g4695246992%_)))))))))
                      (_%$%loop4698147035%_ _%$%target4697847029%_ '()))))
                 (_%__match4940649407%_
                  (lambda (_%$%e4695647098%_
                           _%$%hd4695747102%_
                           _%$%tl4695847105%_
                           _%$%e4695947108%_
                           _%$%hd4696047112%_
                           _%$%tl4696147115%_
                           _%$%e4696247118%_
                           _%$%hd4696347122%_
                           _%$%tl4696447125%_)
                    (let ((_%$%g4695447128%_ _%$%hd4696347122%_)
                          (_%$%g4695547130%_ _%$%hd4696047112%_))
                      (if (gx#identifier? _%$%g4695547130%_)
                          (_%__kont4938049381%_
                           _%$%g4695447128%_
                           _%$%g4695547130%_)
                          (if (gx#stx-pair? _%$%hd4696047112%_)
                              (let ((_%$%e4697547019%_
                                     (gx#syntax-e _%$%hd4696047112%_)))
                                (let ((_%$%tl4697747026%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4697547019%_)))
                                      (_%$%hd4697647023%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4697547019%_))))
                                  (if (gx#stx-pair/null? _%$%tl4696147115%_)
                                      (let ((_%__splice4938449385%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl4696147115%_
                                              '0)))
                                        (let ((_%$%tl4698047032%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4938449385%_
                                                  '1)))
                                              (_%$%target4697847029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4938449385%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl4698047032%_)
                                              (_%__match4943249433%_
                                               _%$%e4695647098%_
                                               _%$%hd4695747102%_
                                               _%$%tl4695847105%_
                                               _%$%e4695947108%_
                                               _%$%hd4696047112%_
                                               _%$%tl4696147115%_
                                               _%$%e4697547019%_
                                               _%$%hd4697647023%_
                                               _%$%tl4697747026%_
                                               _%__splice4938449385%_
                                               _%$%target4697847029%_
                                               _%$%tl4698047032%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g4695246992%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g4695246992%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g4695246992%_))))))))
            (if (gx#stx-pair? _%__stx4937749378%_)
                (let ((_%$%e4695647098%_ (gx#syntax-e _%__stx4937749378%_)))
                  (let ((_%$%tl4695847105%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4695647098%_)))
                        (_%$%hd4695747102%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4695647098%_))))
                    (if (gx#stx-pair? _%$%tl4695847105%_)
                        (let ((_%$%e4695947108%_
                               (gx#syntax-e _%$%tl4695847105%_)))
                          (let ((_%$%tl4696147115%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4695947108%_)))
                                (_%$%hd4696047112%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4695947108%_))))
                            (if (gx#stx-pair? _%$%tl4696147115%_)
                                (let ((_%$%e4696247118%_
                                       (gx#syntax-e _%$%tl4696147115%_)))
                                  (let ((_%$%tl4696447125%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4696247118%_)))
                                        (_%$%hd4696347122%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4696247118%_))))
                                    (if (gx#stx-null? _%$%tl4696447125%_)
                                        (_%__match4940649407%_
                                         _%$%e4695647098%_
                                         _%$%hd4695747102%_
                                         _%$%tl4695847105%_
                                         _%$%e4695947108%_
                                         _%$%hd4696047112%_
                                         _%$%tl4696147115%_
                                         _%$%e4696247118%_
                                         _%$%hd4696347122%_
                                         _%$%tl4696447125%_)
                                        (if (gx#stx-pair? _%$%hd4696047112%_)
                                            (let ((_%$%e4697547019%_
                                                   (gx#syntax-e
                                                    _%$%hd4696047112%_)))
                                              (let ((_%$%tl4697747026%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4697547019%_)))
                                                    (_%$%hd4697647023%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4697547019%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4696147115%_)
                                                    (let ((_%__splice4938449385%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4696147115%_
                                                            '0)))
                                                      (let ((_%$%tl4698047032%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4938449385%_ '1)))
                    (_%$%target4697847029%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4938449385%_ '0))))
                (if (gx#stx-null? _%$%tl4698047032%_)
                    (_%__match4943249433%_
                     _%$%e4695647098%_
                     _%$%hd4695747102%_
                     _%$%tl4695847105%_
                     _%$%e4695947108%_
                     _%$%hd4696047112%_
                     _%$%tl4696147115%_
                     _%$%e4697547019%_
                     _%$%hd4697647023%_
                     _%$%tl4697747026%_
                     _%__splice4938449385%_
                     _%$%target4697847029%_
                     _%$%tl4698047032%_)
                    (let () (declare (not safe)) (_%$%g4695246992%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g4695246992%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g4695246992%_))))))
                                (if (gx#stx-pair? _%$%hd4696047112%_)
                                    (let ((_%$%e4697547019%_
                                           (gx#syntax-e _%$%hd4696047112%_)))
                                      (let ((_%$%tl4697747026%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4697547019%_)))
                                            (_%$%hd4697647023%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4697547019%_))))
                                        (if (gx#stx-pair/null?
                                             _%$%tl4696147115%_)
                                            (let ((_%__splice4938449385%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4696147115%_
                                                    '0)))
                                              (let ((_%$%tl4698047032%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4938449385%_
                                                        '1)))
                                                    (_%$%target4697847029%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4938449385%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4698047032%_)
                                                    (_%__match4943249433%_
                                                     _%$%e4695647098%_
                                                     _%$%hd4695747102%_
                                                     _%$%tl4695847105%_
                                                     _%$%e4695947108%_
                                                     _%$%hd4696047112%_
                                                     _%$%tl4696147115%_
                                                     _%$%e4697547019%_
                                                     _%$%hd4697647023%_
                                                     _%$%tl4697747026%_
                                                     _%__splice4938449385%_
                                                     _%$%target4697847029%_
                                                     _%$%tl4698047032%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g4695246992%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g4695246992%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g4695246992%_))))))
                        (let () (declare (not safe)) (_%$%g4695246992%_)))))
                (let () (declare (not safe)) (_%$%g4695246992%_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_%stx47150%_)
       (let* ((_%$%g4715347173%_
               (lambda (_%$%g4715447169%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4715447169%_)))
              (_%$%g4715247242%_
               (lambda (_%$%g4715447177%_)
                 (if (gx#stx-pair? _%$%g4715447177%_)
                     (let ((_%$%e4715647180%_ (gx#syntax-e _%$%g4715447177%_)))
                       (let ((_%$%hd4715747184%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4715647180%_)))
                             (_%$%tl4715847187%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4715647180%_))))
                         (if (gx#stx-pair/null? _%$%tl4715847187%_)
                             (let ((_g49527_
                                    (gx#syntax-split-splice
                                     _%$%tl4715847187%_
                                     '0)))
                               (begin
                                 (let ((_g49528_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g49527_)
                                              (##values-length _g49527_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g49528_ 2)))
                                       (error "Context expects 2 values"
                                              _g49528_)))
                                 (let ((_%$%target4715947190%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g49527_ 0)))
                                       (_%$%tl4716147193%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g49527_ 1))))
                                   (if (gx#stx-null? _%$%tl4716147193%_)
                                       (letrec ((_%$%loop4716247196%_
                                                 (lambda (_%$%hd4716047200%_
                                                          _%$%body4716647203%_)
                                                   (if (gx#stx-pair?
                                                        _%$%hd4716047200%_)
                                                       (let ((_%$%e4716347205%_
                                                              (gx#syntax-e
                                                               _%$%hd4716047200%_)))
                                                         (let ((_%$%lp-hd4716447209%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e4716347205%_)))
                       (_%$%lp-tl4716547212%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e4716347205%_))))
                   (_%$%loop4716247196%_
                    _%$%lp-tl4716547212%_
                    (cons _%$%lp-hd4716447209%_ _%$%body4716647203%_))))
               (let ((_%$%body4716747215%_ (reverse _%$%body4716647203%_)))
                 (cons 'phi:
                       (cons '1
                             (foldr (lambda (_%$%g4723347236%_
                                             _%$%g4723447239%_)
                                      (cons _%$%g4723347236%_
                                            _%$%g4723447239%_))
                                    '()
                                    _%$%body4716747215%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%$%loop4716247196%_
                                          _%$%target4715947190%_
                                          '()))
                                       (_%$%g4715347173%_
                                        _%$%g4715447177%_)))))
                             (_%$%g4715347173%_ _%$%g4715447177%_))))
                     (_%$%g4715347173%_ _%$%g4715447177%_)))))
         (_%$%g4715247242%_ _%stx47150%_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_%stx47247%_)
       (let* ((_%$%g4725047270%_
               (lambda (_%$%g4725147266%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4725147266%_)))
              (_%$%g4724947339%_
               (lambda (_%$%g4725147274%_)
                 (if (gx#stx-pair? _%$%g4725147274%_)
                     (let ((_%$%e4725347277%_ (gx#syntax-e _%$%g4725147274%_)))
                       (let ((_%$%hd4725447281%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4725347277%_)))
                             (_%$%tl4725547284%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4725347277%_))))
                         (if (gx#stx-pair/null? _%$%tl4725547284%_)
                             (let ((_g49529_
                                    (gx#syntax-split-splice
                                     _%$%tl4725547284%_
                                     '0)))
                               (begin
                                 (let ((_g49530_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g49529_)
                                              (##values-length _g49529_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g49530_ 2)))
                                       (error "Context expects 2 values"
                                              _g49530_)))
                                 (let ((_%$%target4725647287%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g49529_ 0)))
                                       (_%$%tl4725847290%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g49529_ 1))))
                                   (if (gx#stx-null? _%$%tl4725847290%_)
                                       (letrec ((_%$%loop4725947293%_
                                                 (lambda (_%$%hd4725747297%_
                                                          _%$%body4726347300%_)
                                                   (if (gx#stx-pair?
                                                        _%$%hd4725747297%_)
                                                       (let ((_%$%e4726047302%_
                                                              (gx#syntax-e
                                                               _%$%hd4725747297%_)))
                                                         (let ((_%$%lp-hd4726147306%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e4726047302%_)))
                       (_%$%lp-tl4726247309%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e4726047302%_))))
                   (_%$%loop4725947293%_
                    _%$%lp-tl4726247309%_
                    (cons _%$%lp-hd4726147306%_ _%$%body4726347300%_))))
               (let ((_%$%body4726447312%_ (reverse _%$%body4726347300%_)))
                 (cons 'phi:
                       (cons '-1
                             (foldr (lambda (_%$%g4733047333%_
                                             _%$%g4733147336%_)
                                      (cons _%$%g4733047333%_
                                            _%$%g4733147336%_))
                                    '()
                                    _%$%body4726447312%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%$%loop4725947293%_
                                          _%$%target4725647287%_
                                          '()))
                                       (_%$%g4725047270%_
                                        _%$%g4725147274%_)))))
                             (_%$%g4725047270%_ _%$%g4725147274%_))))
                     (_%$%g4725047270%_ _%$%g4725147274%_)))))
         (_%$%g4724947339%_ _%stx47247%_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_%stx47344%_)
       (let* ((_%$%g4734747371%_
               (lambda (_%$%g4734847367%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4734847367%_)))
              (_%$%g4734647497%_
               (lambda (_%$%g4734847375%_)
                 (if (gx#stx-pair? _%$%g4734847375%_)
                     (let ((_%$%e4735147378%_ (gx#syntax-e _%$%g4734847375%_)))
                       (let ((_%$%hd4735247382%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4735147378%_)))
                             (_%$%tl4735347385%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4735147378%_))))
                         (if (gx#stx-pair? _%$%tl4735347385%_)
                             (let ((_%$%e4735447388%_
                                    (gx#syntax-e _%$%tl4735347385%_)))
                               (let ((_%$%hd4735547392%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e4735447388%_)))
                                     (_%$%tl4735647395%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e4735447388%_))))
                                 (if (gx#stx-pair/null? _%$%tl4735647395%_)
                                     (let ((_g49531_
                                            (gx#syntax-split-splice
                                             _%$%tl4735647395%_
                                             '0)))
                                       (begin
                                         (let ((_g49532_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49531_)
                                                      (##values-length
                                                       _g49531_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49532_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49532_)))
                                         (let ((_%$%target4735747398%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49531_ 0)))
                                               (_%$%tl4735947401%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49531_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl4735947401%_)
                                               (letrec ((_%$%loop4736047404%_
                                                         (lambda (_%$%hd4735847408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%id4736447411%_)
                   (if (gx#stx-pair? _%$%hd4735847408%_)
                       (let ((_%$%e4736147413%_
                              (gx#syntax-e _%$%hd4735847408%_)))
                         (let ((_%$%lp-hd4736247417%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4736147413%_)))
                               (_%$%lp-tl4736347420%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4736147413%_))))
                           (_%$%loop4736047404%_
                            _%$%lp-tl4736347420%_
                            (cons _%$%lp-hd4736247417%_ _%$%id4736447411%_))))
                       (let ((_%$%id4736547423%_ (reverse _%$%id4736447411%_)))
                         (if (gx#identifier-list?
                              (foldr (lambda (_%$%g4744547448%_
                                              _%$%g4744647451%_)
                                       (cons _%$%g4744547448%_
                                             _%$%g4744647451%_))
                                     '()
                                     _%$%id4736547423%_))
                             (let* ((_%keys47462%_
                                     (gx#stx-map
                                      gx#core-identifier-key
                                      (foldr (lambda (_%$%g4745347456%_
                                                      _%$%g4745447459%_)
                                               (cons _%$%g4745347456%_
                                                     _%$%g4745447459%_))
                                             '()
                                             _%$%id4736547423%_)))
                                    (_%keytab47473%_
                                     (let ((_%ht47465%_ (make-hash-table)))
                                       (for-each
                                        (lambda (_%$%g4746747469%_)
                                          (hash-put!
                                           _%ht47465%_
                                           _%$%g4746747469%_
                                           '#t))
                                        _%keys47462%_)
                                       _%ht47465%_))
                                    (_%imports47476%_
                                     (gx#core-expand-import-source
                                      _%$%hd4735547392%_))
                                    (_%fold-e47492%_
                                     (letrec ((_%fold-e47479%_
                                               (lambda (_%in47482%_ _%r47484%_)
                                                 (if (gx#module-import?
                                                      _%in47482%_)
                                                     (if (hash-get
                                                          _%keytab47473%_
                                                          (gx#module-import-name
                                                           _%in47482%_))
                                                         (cons _%in47482%_
                                                               _%r47484%_)
                                                         _%r47484%_)
                                                     (if (gx#import-set?
                                                          _%in47482%_)
                                                         (foldl _%fold-e47479%_
                                                                _%r47484%_
                                                                (gx#import-set-imports
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in47482%_))
                 _%r47484%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%fold-e47479%_)))
                               (cons 'begin:
                                     (foldl _%fold-e47492%_
                                            '()
                                            _%imports47476%_)))
                             (_%$%g4734747371%_ _%$%g4734847375%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop4736047404%_
                                                  _%$%target4735747398%_
                                                  '()))
                                               (_%$%g4734747371%_
                                                _%$%g4734847375%_)))))
                                     (_%$%g4734747371%_ _%$%g4734847375%_))))
                             (_%$%g4734747371%_ _%$%g4734847375%_))))
                     (_%$%g4734747371%_ _%$%g4734847375%_)))))
         (_%$%g4734647497%_ _%stx47344%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_%stx47502%_)
       (let* ((_%$%g4750547529%_
               (lambda (_%$%g4750647525%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4750647525%_)))
              (_%$%g4750447655%_
               (lambda (_%$%g4750647533%_)
                 (if (gx#stx-pair? _%$%g4750647533%_)
                     (let ((_%$%e4750947536%_ (gx#syntax-e _%$%g4750647533%_)))
                       (let ((_%$%hd4751047540%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4750947536%_)))
                             (_%$%tl4751147543%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4750947536%_))))
                         (if (gx#stx-pair? _%$%tl4751147543%_)
                             (let ((_%$%e4751247546%_
                                    (gx#syntax-e _%$%tl4751147543%_)))
                               (let ((_%$%hd4751347550%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e4751247546%_)))
                                     (_%$%tl4751447553%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e4751247546%_))))
                                 (if (gx#stx-pair/null? _%$%tl4751447553%_)
                                     (let ((_g49533_
                                            (gx#syntax-split-splice
                                             _%$%tl4751447553%_
                                             '0)))
                                       (begin
                                         (let ((_g49534_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49533_)
                                                      (##values-length
                                                       _g49533_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49534_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49534_)))
                                         (let ((_%$%target4751547556%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49533_ 0)))
                                               (_%$%tl4751747559%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49533_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl4751747559%_)
                                               (letrec ((_%$%loop4751847562%_
                                                         (lambda (_%$%hd4751647566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%id4752247569%_)
                   (if (gx#stx-pair? _%$%hd4751647566%_)
                       (let ((_%$%e4751947571%_
                              (gx#syntax-e _%$%hd4751647566%_)))
                         (let ((_%$%lp-hd4752047575%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4751947571%_)))
                               (_%$%lp-tl4752147578%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4751947571%_))))
                           (_%$%loop4751847562%_
                            _%$%lp-tl4752147578%_
                            (cons _%$%lp-hd4752047575%_ _%$%id4752247569%_))))
                       (let ((_%$%id4752347581%_ (reverse _%$%id4752247569%_)))
                         (if (gx#identifier-list?
                              (foldr (lambda (_%$%g4760347606%_
                                              _%$%g4760447609%_)
                                       (cons _%$%g4760347606%_
                                             _%$%g4760447609%_))
                                     '()
                                     _%$%id4752347581%_))
                             (let* ((_%keys47620%_
                                     (gx#stx-map
                                      gx#core-identifier-key
                                      (foldr (lambda (_%$%g4761147614%_
                                                      _%$%g4761247617%_)
                                               (cons _%$%g4761147614%_
                                                     _%$%g4761247617%_))
                                             '()
                                             _%$%id4752347581%_)))
                                    (_%keytab47631%_
                                     (let ((_%ht47623%_ (make-hash-table)))
                                       (for-each
                                        (lambda (_%$%g4762547627%_)
                                          (hash-put!
                                           _%ht47623%_
                                           _%$%g4762547627%_
                                           '#t))
                                        _%keys47620%_)
                                       _%ht47623%_))
                                    (_%imports47634%_
                                     (gx#core-expand-import-source
                                      _%$%hd4751347550%_))
                                    (_%fold-e47650%_
                                     (letrec ((_%fold-e47637%_
                                               (lambda (_%in47640%_ _%r47642%_)
                                                 (if (gx#module-import?
                                                      _%in47640%_)
                                                     (if (hash-get
                                                          _%keytab47631%_
                                                          (gx#module-import-name
                                                           _%in47640%_))
                                                         _%r47642%_
                                                         (cons _%in47640%_
                                                               _%r47642%_))
                                                     (if (gx#import-set?
                                                          _%in47640%_)
                                                         (foldl _%fold-e47637%_
                                                                _%r47642%_
                                                                (gx#import-set-imports
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in47640%_))
                 (cons _%in47640%_ _%r47642%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%fold-e47637%_)))
                               (cons 'begin:
                                     (foldl _%fold-e47650%_
                                            '()
                                            _%imports47634%_)))
                             (_%$%g4750547529%_ _%$%g4750647533%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop4751847562%_
                                                  _%$%target4751547556%_
                                                  '()))
                                               (_%$%g4750547529%_
                                                _%$%g4750647533%_)))))
                                     (_%$%g4750547529%_ _%$%g4750647533%_))))
                             (_%$%g4750547529%_ _%$%g4750647533%_))))
                     (_%$%g4750547529%_ _%$%g4750647533%_)))))
         (_%$%g4750447655%_ _%stx47502%_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_%in47707%_ _%rename47709%_)
      (gx#make-module-import
       (gx#module-import-source _%in47707%_)
       _%rename47709%_
       (gx#module-import-phi _%in47707%_)
       (gx#module-import-weak? _%in47707%_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_%name47660%_ _%pre47662%_)
      (let* ((_%$%name4766347671%_ _%name47660%_)
             (_%$%else4766547683%_
              (lambda () (make-symbol _%pre47662%_ _%name47660%_)))
             (_%$%K4766747691%_
              (lambda (_%mark47687%_ _%id47689%_)
                (cons (make-symbol _%pre47662%_ _%id47689%_) _%mark47687%_))))
        (if (pair? _%$%name4766347671%_)
            (let ((_%$%hd4766847695%_
                   (let () (declare (not safe)) (##car _%$%name4766347671%_)))
                  (_%$%tl4766947698%_
                   (let () (declare (not safe)) (##cdr _%$%name4766347671%_))))
              (let* ((_%id47701%_ _%$%hd4766847695%_)
                     (_%mark47704%_ _%$%tl4766947698%_))
                (_%$%K4766747691%_ _%mark47704%_ _%id47701%_)))
            (_%$%else4766547683%_)))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_%stx47711%_)
       (let* ((_%$%g4771447747%_
               (lambda (_%$%g4771547743%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4771547743%_)))
              (_%$%g4771347938%_
               (lambda (_%$%g4771547751%_)
                 (if (gx#stx-pair? _%$%g4771547751%_)
                     (let ((_%$%e4771947754%_ (gx#syntax-e _%$%g4771547751%_)))
                       (let ((_%$%hd4772047758%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4771947754%_)))
                             (_%$%tl4772147761%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4771947754%_))))
                         (if (gx#stx-pair? _%$%tl4772147761%_)
                             (let ((_%$%e4772247764%_
                                    (gx#syntax-e _%$%tl4772147761%_)))
                               (let ((_%$%hd4772347768%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e4772247764%_)))
                                     (_%$%tl4772447771%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e4772247764%_))))
                                 (if (gx#stx-pair/null? _%$%tl4772447771%_)
                                     (let ((_g49535_
                                            (gx#syntax-split-splice
                                             _%$%tl4772447771%_
                                             '0)))
                                       (begin
                                         (let ((_g49536_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49535_)
                                                      (##values-length
                                                       _g49535_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49536_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49536_)))
                                         (let ((_%$%target4772547774%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49535_ 0)))
                                               (_%$%tl4772747777%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49535_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl4772747777%_)
                                               (letrec ((_%$%loop4772847780%_
                                                         (lambda (_%$%hd4772647784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%new-id4773247787%_
                          _%$%id4773347788%_)
                   (if (gx#stx-pair? _%$%hd4772647784%_)
                       (let ((_%$%e4772947790%_
                              (gx#syntax-e _%$%hd4772647784%_)))
                         (let ((_%$%lp-hd4773047794%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4772947790%_)))
                               (_%$%lp-tl4773147797%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4772947790%_))))
                           (if (gx#stx-pair? _%$%lp-hd4773047794%_)
                               (let ((_%$%e4773647800%_
                                      (gx#syntax-e _%$%lp-hd4773047794%_)))
                                 (let ((_%$%hd4773747804%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e4773647800%_)))
                                       (_%$%tl4773847807%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e4773647800%_))))
                                   (if (gx#stx-pair? _%$%tl4773847807%_)
                                       (let ((_%$%e4773947810%_
                                              (gx#syntax-e
                                               _%$%tl4773847807%_)))
                                         (let ((_%$%hd4774047814%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e4773947810%_)))
                                               (_%$%tl4774147817%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e4773947810%_))))
                                           (if (gx#stx-null?
                                                _%$%tl4774147817%_)
                                               (_%$%loop4772847780%_
                                                _%$%lp-tl4773147797%_
                                                (cons _%$%hd4774047814%_
                                                      _%$%new-id4773247787%_)
                                                (cons _%$%hd4773747804%_
                                                      _%$%id4773347788%_))
                                               (_%$%g4771447747%_
                                                _%$%g4771547751%_))))
                                       (_%$%g4771447747%_ _%$%g4771547751%_))))
                               (_%$%g4771447747%_ _%$%g4771547751%_))))
                       (let ((_%$%new-id4773447820%_
                              (reverse _%$%new-id4773247787%_))
                             (_%$%id4773547822%_ (reverse _%$%id4773347788%_)))
                         (if (and (gx#identifier-list?
                                   (foldr (lambda (_%$%g4784547848%_
                                                   _%$%g4784647851%_)
                                            (cons _%$%g4784547848%_
                                                  _%$%g4784647851%_))
                                          '()
                                          _%$%id4773547822%_))
                                  (gx#identifier-list?
                                   (foldr (lambda (_%$%g4785347856%_
                                                   _%$%g4785447859%_)
                                            (cons _%$%g4785347856%_
                                                  _%$%g4785447859%_))
                                          '()
                                          _%$%new-id4773447820%_)))
                             (let* ((_%keytab47862%_ (make-hash-table))
                                    (_%found47865%_ (make-hash-table))
                                    (_%_47888%_
                                     (for-each
                                      (lambda (_%id47868%_ _%new-id47870%_)
                                        (hash-put!
                                         _%keytab47862%_
                                         (gx#core-identifier-key _%id47868%_)
                                         (gx#core-identifier-key
                                          _%new-id47870%_)))
                                      (foldr (lambda (_%$%g4787147874%_
                                                      _%$%g4787247877%_)
                                               (cons _%$%g4787147874%_
                                                     _%$%g4787247877%_))
                                             '()
                                             _%$%id4773547822%_)
                                      (foldr (lambda (_%$%g4787947882%_
                                                      _%$%g4788047885%_)
                                               (cons _%$%g4787947882%_
                                                     _%$%g4788047885%_))
                                             '()
                                             _%$%new-id4773447820%_)))
                                    (_%imports47891%_
                                     (gx#core-expand-import-source
                                      _%$%hd4772347768%_))
                                    (_%fold-e47919%_
                                     (letrec ((_%fold-e47894%_
                                               (lambda (_%in47897%_ _%r47899%_)
                                                 (if (gx#module-import?
                                                      _%in47897%_)
                                                     (let* ((_%name47903%_
                                                             (gx#module-import-name
                                                              _%in47897%_))
                                                            (_%$e47906%_
                                                             (hash-get
                                                              _%keytab47862%_
                                                              _%name47903%_)))
                                                       (if _%$e47906%_
                                                           (let ()
                                                             (hash-put!
                                                              _%found47865%_
                                                              _%name47903%_
                                                              '#t)
                                                             (cons (|gerbil/core/module-sugar[1]#module-import-rename|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%in47897%_
                            _%$e47906%_)
                           _%r47899%_))
                   (cons _%in47897%_ _%r47899%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#import-set?
                                                          _%in47897%_)
                                                         (foldl _%fold-e47894%_
                                                                _%r47899%_
                                                                (gx#import-set-imports
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in47897%_))
                 (cons _%in47897%_ _%r47899%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%fold-e47894%_))
                                    (_%new-imports47922%_
                                     (foldl _%fold-e47919%_
                                            '()
                                            _%imports47891%_)))
                               (for-each
                                (lambda (_%id47927%_)
                                  (if (hash-get
                                       _%found47865%_
                                       (gx#core-identifier-key _%id47927%_))
                                      '#!void
                                      (gx#raise-syntax-error
                                       '#f
                                       '"bad syntax; identifier is not in the import set"
                                       _%stx47711%_
                                       _%id47927%_)))
                                (foldr (lambda (_%$%g4792947932%_
                                                _%$%g4793047935%_)
                                         (cons _%$%g4792947932%_
                                               _%$%g4793047935%_))
                                       '()
                                       _%$%id4773547822%_))
                               (cons 'begin: _%new-imports47922%_))
                             (_%$%g4771447747%_ _%$%g4771547751%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop4772847780%_
                                                  _%$%target4772547774%_
                                                  '()
                                                  '()))
                                               (_%$%g4771447747%_
                                                _%$%g4771547751%_)))))
                                     (_%$%g4771447747%_ _%$%g4771547751%_))))
                             (_%$%g4771447747%_ _%$%g4771547751%_))))
                     (_%$%g4771447747%_ _%$%g4771547751%_)))))
         (_%$%g4771347938%_ _%stx47711%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_%stx47943%_)
       (let* ((_%$%g4794647964%_
               (lambda (_%$%g4794747960%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4794747960%_)))
              (_%$%g4794548049%_
               (lambda (_%$%g4794747968%_)
                 (if (gx#stx-pair? _%$%g4794747968%_)
                     (let ((_%$%e4795047971%_ (gx#syntax-e _%$%g4794747968%_)))
                       (let ((_%$%hd4795147975%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4795047971%_)))
                             (_%$%tl4795247978%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4795047971%_))))
                         (if (gx#stx-pair? _%$%tl4795247978%_)
                             (let ((_%$%e4795347981%_
                                    (gx#syntax-e _%$%tl4795247978%_)))
                               (let ((_%$%hd4795447985%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e4795347981%_)))
                                     (_%$%tl4795547988%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e4795347981%_))))
                                 (if (gx#stx-pair? _%$%tl4795547988%_)
                                     (let ((_%$%e4795647991%_
                                            (gx#syntax-e _%$%tl4795547988%_)))
                                       (let ((_%$%hd4795747995%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e4795647991%_)))
                                             (_%$%tl4795847998%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e4795647991%_))))
                                         (if (gx#stx-null? _%$%tl4795847998%_)
                                             (if (gx#identifier?
                                                  _%$%hd4795747995%_)
                                                 (let* ((_%pre48019%_
                                                         (gx#stx-e
                                                          _%$%hd4795747995%_))
                                                        (_%imports48022%_
                                                         (gx#core-expand-import-source
                                                          _%$%hd4795447985%_))
                                                        (_%rename-e48028%_
                                                         (lambda (_%name48025%_)
                                                           (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                            _%name48025%_
                                                            _%pre48019%_)))
                                                        (_%fold-e48044%_
                                                         (letrec ((_%fold-e48031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%in48034%_ _%r48036%_)
                             (if (gx#module-import? _%in48034%_)
                                 (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                        _%in48034%_
                                        (_%rename-e48028%_
                                         (gx#module-import-name _%in48034%_)))
                                       _%r48036%_)
                                 (if (gx#import-set? _%in48034%_)
                                     (foldl _%fold-e48031%_
                                            _%r48036%_
                                            (gx#import-set-imports
                                             _%in48034%_))
                                     (cons _%in48034%_ _%r48036%_))))))
                   _%fold-e48031%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons 'begin:
                                                         (foldl _%fold-e48044%_
                                                                '()
                                                                _%imports48022%_)))
                                                 (_%$%g4794647964%_
                                                  _%$%g4794747968%_))
                                             (_%$%g4794647964%_
                                              _%$%g4794747968%_))))
                                     (_%$%g4794647964%_ _%$%g4794747968%_))))
                             (_%$%g4794647964%_ _%$%g4794747968%_))))
                     (_%$%g4794647964%_ _%$%g4794747968%_)))))
         (_%$%g4794548049%_ _%stx47943%_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_%stx48053%_)
       (letrec ((_%flatten48056%_
                 (lambda (_%list-of-lists48307%_)
                   (foldr (lambda (_%v48310%_ _%acc48312%_)
                            (if (null? _%v48310%_)
                                _%acc48312%_
                                (if (pair? _%v48310%_)
                                    (append (_%flatten48056%_ _%v48310%_)
                                            _%acc48312%_)
                                    (cons _%v48310%_ _%acc48312%_))))
                          '()
                          _%list-of-lists48307%_)))
                (_%expand-path48058%_
                 (lambda (_%top48177%_ _%mod48179%_)
                   (let* ((_%__stx4943549436%_ _%mod48179%_)
                          (_%$%g4818248204%_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%__stx4943549436%_))))
                     (let ((_%__kont4943849439%_
                            (lambda (_%$%g4818448270%_ _%$%g4818548272%_)
                              (map (lambda (_%mod48287%_)
                                     (gx#stx-identifier
                                      _%top48177%_
                                      _%top48177%_
                                      '"/"
                                      _%mod48287%_))
                                   (_%flatten48056%_
                                    (map (lambda (_%$%g4828948291%_)
                                           (_%expand-path48058%_
                                            _%$%g4818548272%_
                                            _%$%g4828948291%_))
                                         (foldr (lambda (_%$%g4829448297%_
                                                         _%$%g4829548300%_)
                                                  (cons _%$%g4829448297%_
                                                        _%$%g4829548300%_))
                                                '()
                                                _%$%g4818448270%_))))))
                           (_%__kont4944249443%_
                            (lambda (_%$%g4819848211%_)
                              (gx#stx-identifier
                               _%top48177%_
                               _%top48177%_
                               '"/"
                               _%$%g4819848211%_))))
                       (let* ((_%$%g4818148225%_
                               (lambda ()
                                 (let ((_%$%g4819848211%_ _%__stx4943549436%_))
                                   (if (or (gx#identifier? _%$%g4819848211%_)
                                           (gx#stx-fixnum? _%$%g4819848211%_))
                                       (_%__kont4944249443%_ _%$%g4819848211%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g4818248204%_))))))
                              (_%__match4945849459%_
                               (lambda (_%$%e4818648232%_
                                        _%$%hd4818748236%_
                                        _%$%tl4818848239%_
                                        _%__splice4944049441%_
                                        _%$%target4818948242%_
                                        _%$%tl4819148245%_)
                                 (letrec ((_%$%loop4819248248%_
                                           (lambda (_%$%hd4819048252%_
                                                    _%$%mod4819648255%_)
                                             (if (gx#stx-pair?
                                                  _%$%hd4819048252%_)
                                                 (let ((_%$%e4819348257%_
                                                        (gx#syntax-e
                                                         _%$%hd4819048252%_)))
                                                   (let ((_%$%lp-tl4819548264%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e4819348257%_)))
                                                         (_%$%lp-hd4819448261%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e4819348257%_))))
                                                     (_%$%loop4819248248%_
                                                      _%$%lp-tl4819548264%_
                                                      (cons _%$%lp-hd4819448261%_
                                                            _%$%mod4819648255%_))))
                                                 (let ((_%$%mod4819748267%_
                                                        (reverse _%$%mod4819648255%_)))
                                                   (_%__kont4943849439%_
                                                    _%$%mod4819748267%_
                                                    _%$%hd4818748236%_))))))
                                   (_%$%loop4819248248%_
                                    _%$%target4818948242%_
                                    '())))))
                         (if (gx#stx-pair? _%__stx4943549436%_)
                             (let ((_%$%e4818648232%_
                                    (gx#syntax-e _%__stx4943549436%_)))
                               (let ((_%$%tl4818848239%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e4818648232%_)))
                                     (_%$%hd4818748236%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e4818648232%_))))
                                 (if (gx#stx-pair/null? _%$%tl4818848239%_)
                                     (let ((_%__splice4944049441%_
                                            (gx#syntax-split-splice->vector
                                             _%$%tl4818848239%_
                                             '0)))
                                       (let ((_%$%tl4819148245%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4944049441%_
                                                 '1)))
                                             (_%$%target4818948242%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4944049441%_
                                                 '0))))
                                         (if (gx#stx-null? _%$%tl4819148245%_)
                                             (_%__match4945849459%_
                                              _%$%e4818648232%_
                                              _%$%hd4818748236%_
                                              _%$%tl4818848239%_
                                              _%__splice4944049441%_
                                              _%$%target4818948242%_
                                              _%$%tl4819148245%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%$%g4818148225%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%$%g4818148225%_)))))
                             (let ()
                               (declare (not safe))
                               (_%$%g4818148225%_)))))))))
         (let* ((_%$%g4806048084%_
                 (lambda (_%$%g4806148080%_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%$%g4806148080%_)))
                (_%$%g4805948173%_
                 (lambda (_%$%g4806148088%_)
                   (if (gx#stx-pair? _%$%g4806148088%_)
                       (let ((_%$%e4806448091%_
                              (gx#syntax-e _%$%g4806148088%_)))
                         (let ((_%$%hd4806548095%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4806448091%_)))
                               (_%$%tl4806648098%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4806448091%_))))
                           (if (gx#stx-pair? _%$%tl4806648098%_)
                               (let ((_%$%e4806748101%_
                                      (gx#syntax-e _%$%tl4806648098%_)))
                                 (let ((_%$%hd4806848105%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e4806748101%_)))
                                       (_%$%tl4806948108%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e4806748101%_))))
                                   (if (gx#stx-pair/null? _%$%tl4806948108%_)
                                       (let ((_g49537_
                                              (gx#syntax-split-splice
                                               _%$%tl4806948108%_
                                               '0)))
                                         (begin
                                           (let ((_g49538_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g49537_)
                                                        (##values-length
                                                         _g49537_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g49538_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g49538_)))
                                           (let ((_%$%target4807048111%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g49537_ 0)))
                                                 (_%$%tl4807248114%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g49537_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%$%tl4807248114%_)
                                                 (letrec ((_%$%loop4807348117%_
                                                           (lambda (_%$%hd4807148121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%mod4807748124%_)
                     (if (gx#stx-pair? _%$%hd4807148121%_)
                         (let ((_%$%e4807448126%_
                                (gx#syntax-e _%$%hd4807148121%_)))
                           (let ((_%$%lp-hd4807548130%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e4807448126%_)))
                                 (_%$%lp-tl4807648133%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e4807448126%_))))
                             (_%$%loop4807348117%_
                              _%$%lp-tl4807648133%_
                              (cons _%$%lp-hd4807548130%_
                                    _%$%mod4807748124%_))))
                         (let ((_%$%mod4807848136%_
                                (reverse _%$%mod4807748124%_)))
                           (cons 'begin:
                                 (_%flatten48056%_
                                  (map (lambda (_%$%g4815948161%_)
                                         (_%expand-path48058%_
                                          _%$%hd4806848105%_
                                          _%$%g4815948161%_))
                                       (foldr (lambda (_%$%g4816448167%_
                                                       _%$%g4816548170%_)
                                                (cons _%$%g4816448167%_
                                                      _%$%g4816548170%_))
                                              '()
                                              _%$%mod4807848136%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%loop4807348117%_
                                                    _%$%target4807048111%_
                                                    '()))
                                                 (_%$%g4806048084%_
                                                  _%$%g4806148088%_)))))
                                       (_%$%g4806048084%_ _%$%g4806148088%_))))
                               (_%$%g4806048084%_ _%$%g4806148088%_))))
                       (_%$%g4806048084%_ _%$%g4806148088%_)))))
           (_%$%g4805948173%_ _%stx48053%_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_%stx48322%_)
       (let* ((_%$%g4832548349%_
               (lambda (_%$%g4832648345%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4832648345%_)))
              (_%$%g4832448475%_
               (lambda (_%$%g4832648353%_)
                 (if (gx#stx-pair? _%$%g4832648353%_)
                     (let ((_%$%e4832948356%_ (gx#syntax-e _%$%g4832648353%_)))
                       (let ((_%$%hd4833048360%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4832948356%_)))
                             (_%$%tl4833148363%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4832948356%_))))
                         (if (gx#stx-pair? _%$%tl4833148363%_)
                             (let ((_%$%e4833248366%_
                                    (gx#syntax-e _%$%tl4833148363%_)))
                               (let ((_%$%hd4833348370%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e4833248366%_)))
                                     (_%$%tl4833448373%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e4833248366%_))))
                                 (if (gx#stx-pair/null? _%$%tl4833448373%_)
                                     (let ((_g49539_
                                            (gx#syntax-split-splice
                                             _%$%tl4833448373%_
                                             '0)))
                                       (begin
                                         (let ((_g49540_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49539_)
                                                      (##values-length
                                                       _g49539_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49540_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49540_)))
                                         (let ((_%$%target4833548376%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49539_ 0)))
                                               (_%$%tl4833748379%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49539_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl4833748379%_)
                                               (letrec ((_%$%loop4833848382%_
                                                         (lambda (_%$%hd4833648386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%id4834248389%_)
                   (if (gx#stx-pair? _%$%hd4833648386%_)
                       (let ((_%$%e4833948391%_
                              (gx#syntax-e _%$%hd4833648386%_)))
                         (let ((_%$%lp-hd4834048395%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4833948391%_)))
                               (_%$%lp-tl4834148398%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4833948391%_))))
                           (_%$%loop4833848382%_
                            _%$%lp-tl4834148398%_
                            (cons _%$%lp-hd4834048395%_ _%$%id4834248389%_))))
                       (let ((_%$%id4834348401%_ (reverse _%$%id4834248389%_)))
                         (if (gx#identifier-list?
                              (foldr (lambda (_%$%g4842348426%_
                                              _%$%g4842448429%_)
                                       (cons _%$%g4842348426%_
                                             _%$%g4842448429%_))
                                     '()
                                     _%$%id4834348401%_))
                             (let* ((_%keys48440%_
                                     (gx#stx-map
                                      gx#core-identifier-key
                                      (foldr (lambda (_%$%g4843148434%_
                                                      _%$%g4843248437%_)
                                               (cons _%$%g4843148434%_
                                                     _%$%g4843248437%_))
                                             '()
                                             _%$%id4834348401%_)))
                                    (_%keytab48451%_
                                     (let ((_%ht48443%_ (make-hash-table)))
                                       (for-each
                                        (lambda (_%$%g4844548447%_)
                                          (hash-put!
                                           _%ht48443%_
                                           _%$%g4844548447%_
                                           '#t))
                                        _%keys48440%_)
                                       _%ht48443%_))
                                    (_%exports48454%_
                                     (gx#core-expand-export-source
                                      _%$%hd4833348370%_))
                                    (_%fold-e48470%_
                                     (letrec ((_%fold-e48457%_
                                               (lambda (_%out48460%_
                                                        _%r48462%_)
                                                 (if (gx#module-export?
                                                      _%out48460%_)
                                                     (if (hash-get
                                                          _%keytab48451%_
                                                          (gx#module-export-name
                                                           _%out48460%_))
                                                         _%r48462%_
                                                         (cons _%out48460%_
                                                               _%r48462%_))
                                                     (if (gx#export-set?
                                                          _%out48460%_)
                                                         (foldl _%fold-e48457%_
                                                                _%r48462%_
                                                                (gx#export-set-exports
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out48460%_))
                 _%r48462%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%fold-e48457%_)))
                               (cons 'begin:
                                     (foldl _%fold-e48470%_
                                            '()
                                            _%exports48454%_)))
                             (_%$%g4832548349%_ _%$%g4832648353%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop4833848382%_
                                                  _%$%target4833548376%_
                                                  '()))
                                               (_%$%g4832548349%_
                                                _%$%g4832648353%_)))))
                                     (_%$%g4832548349%_ _%$%g4832648353%_))))
                             (_%$%g4832548349%_ _%$%g4832648353%_))))
                     (_%$%g4832548349%_ _%$%g4832648353%_)))))
         (_%$%g4832448475%_ _%stx48322%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-from-out|
    (gx#make-export-expander
     (lambda (_%stx48480%_)
       (let* ((_%$%g4848348507%_
               (lambda (_%$%g4848448503%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4848448503%_)))
              (_%$%g4848248637%_
               (lambda (_%$%g4848448511%_)
                 (if (gx#stx-pair? _%$%g4848448511%_)
                     (let ((_%$%e4848748514%_ (gx#syntax-e _%$%g4848448511%_)))
                       (let ((_%$%hd4848848518%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4848748514%_)))
                             (_%$%tl4848948521%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4848748514%_))))
                         (if (gx#stx-pair? _%$%tl4848948521%_)
                             (let ((_%$%e4849048524%_
                                    (gx#syntax-e _%$%tl4848948521%_)))
                               (let ((_%$%hd4849148528%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e4849048524%_)))
                                     (_%$%tl4849248531%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e4849048524%_))))
                                 (if (gx#stx-pair/null? _%$%tl4849248531%_)
                                     (let ((_g49541_
                                            (gx#syntax-split-splice
                                             _%$%tl4849248531%_
                                             '0)))
                                       (begin
                                         (let ((_g49542_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49541_)
                                                      (##values-length
                                                       _g49541_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49542_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49542_)))
                                         (let ((_%$%target4849348534%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49541_ 0)))
                                               (_%$%tl4849548537%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49541_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl4849548537%_)
                                               (letrec ((_%$%loop4849648540%_
                                                         (lambda (_%$%hd4849448544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%filter-out4850048547%_)
                   (if (gx#stx-pair? _%$%hd4849448544%_)
                       (let ((_%$%e4849748549%_
                              (gx#syntax-e _%$%hd4849448544%_)))
                         (let ((_%$%lp-hd4849848553%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4849748549%_)))
                               (_%$%lp-tl4849948556%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4849748549%_))))
                           (_%$%loop4849648540%_
                            _%$%lp-tl4849948556%_
                            (cons _%$%lp-hd4849848553%_
                                  _%$%filter-out4850048547%_))))
                       (let* ((_%$%filter-out4850148559%_
                               (reverse _%$%filter-out4850048547%_))
                              (_%filtered48582%_ (make-hash-table)))
                         (letrec ((_%fold-out48585%_
                                   (lambda (_%out48627%_ _%r48629%_)
                                     (if (gx#module-export? _%out48627%_)
                                         (cons _%out48627%_ _%r48629%_)
                                         (if (gx#export-set? _%out48627%_)
                                             (foldl _%fold-out48585%_
                                                    _%r48629%_
                                                    (gx#export-set-exports
                                                     _%out48627%_))
                                             _%r48629%_)))))
                           (for-each
                            (lambda (_%src48588%_)
                              (let* ((_%exports48594%_
                                      (if (gx#identifier? _%src48588%_)
                                          (let ((_%mod48591%_
                                                 (gx#syntax-local-value
                                                  _%src48588%_)))
                                            (if (gx#module-context?
                                                 _%mod48591%_)
                                                '#!void
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"not a module context"
                                                 _%src48588%_))
                                            (gx#module-context-export
                                             _%mod48591%_))
                                          (gx#core-expand-export-source
                                           _%src48588%_)))
                                     (_%exports48597%_
                                      (foldl _%fold-out48585%_
                                             '()
                                             _%exports48594%_)))
                                (for-each
                                 (lambda (_%out48602%_)
                                   (hash-put!
                                    _%filtered48582%_
                                    (gx#module-export-name _%out48602%_)
                                    '#t))
                                 _%exports48597%_)))
                            (foldr (lambda (_%$%g4860448607%_
                                            _%$%g4860548610%_)
                                     (cons _%$%g4860448607%_
                                           _%$%g4860548610%_))
                                   '()
                                   _%$%filter-out4850148559%_))
                           (let* ((_%exports48613%_
                                   (gx#core-expand-export-source
                                    _%$%hd4849148528%_))
                                  (_%exports48616%_
                                   (foldl _%fold-out48585%_
                                          '()
                                          _%exports48613%_))
                                  (_%exports48622%_
                                   (filter (lambda (_%out48619%_)
                                             (not (hash-get
                                                   _%filtered48582%_
                                                   (gx#module-export-name
                                                    _%out48619%_))))
                                           _%exports48616%_)))
                             (cons 'begin: _%exports48622%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop4849648540%_
                                                  _%$%target4849348534%_
                                                  '()))
                                               (_%$%g4848348507%_
                                                _%$%g4848448511%_)))))
                                     (_%$%g4848348507%_ _%$%g4848448511%_))))
                             (_%$%g4848348507%_ _%$%g4848448511%_))))
                     (_%$%g4848348507%_ _%$%g4848448511%_)))))
         (_%$%g4848248637%_ _%stx48480%_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_%out48642%_ _%rename48644%_)
      (gx#make-module-export
       (gx#module-export-context _%out48642%_)
       (gx#module-export-key _%out48642%_)
       (gx#module-export-phi _%out48642%_)
       _%rename48644%_
       (gx#module-export-weak? _%out48642%_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_%stx48646%_)
       (let* ((_%$%g4864948682%_
               (lambda (_%$%g4865048678%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4865048678%_)))
              (_%$%g4864848873%_
               (lambda (_%$%g4865048686%_)
                 (if (gx#stx-pair? _%$%g4865048686%_)
                     (let ((_%$%e4865448689%_ (gx#syntax-e _%$%g4865048686%_)))
                       (let ((_%$%hd4865548693%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4865448689%_)))
                             (_%$%tl4865648696%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4865448689%_))))
                         (if (gx#stx-pair? _%$%tl4865648696%_)
                             (let ((_%$%e4865748699%_
                                    (gx#syntax-e _%$%tl4865648696%_)))
                               (let ((_%$%hd4865848703%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e4865748699%_)))
                                     (_%$%tl4865948706%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e4865748699%_))))
                                 (if (gx#stx-pair/null? _%$%tl4865948706%_)
                                     (let ((_g49543_
                                            (gx#syntax-split-splice
                                             _%$%tl4865948706%_
                                             '0)))
                                       (begin
                                         (let ((_g49544_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49543_)
                                                      (##values-length
                                                       _g49543_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49544_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49544_)))
                                         (let ((_%$%target4866048709%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49543_ 0)))
                                               (_%$%tl4866248712%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49543_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl4866248712%_)
                                               (letrec ((_%$%loop4866348715%_
                                                         (lambda (_%$%hd4866148719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%new-id4866748722%_
                          _%$%id4866848723%_)
                   (if (gx#stx-pair? _%$%hd4866148719%_)
                       (let ((_%$%e4866448725%_
                              (gx#syntax-e _%$%hd4866148719%_)))
                         (let ((_%$%lp-hd4866548729%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4866448725%_)))
                               (_%$%lp-tl4866648732%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4866448725%_))))
                           (if (gx#stx-pair? _%$%lp-hd4866548729%_)
                               (let ((_%$%e4867148735%_
                                      (gx#syntax-e _%$%lp-hd4866548729%_)))
                                 (let ((_%$%hd4867248739%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e4867148735%_)))
                                       (_%$%tl4867348742%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e4867148735%_))))
                                   (if (gx#stx-pair? _%$%tl4867348742%_)
                                       (let ((_%$%e4867448745%_
                                              (gx#syntax-e
                                               _%$%tl4867348742%_)))
                                         (let ((_%$%hd4867548749%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e4867448745%_)))
                                               (_%$%tl4867648752%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e4867448745%_))))
                                           (if (gx#stx-null?
                                                _%$%tl4867648752%_)
                                               (_%$%loop4866348715%_
                                                _%$%lp-tl4866648732%_
                                                (cons _%$%hd4867548749%_
                                                      _%$%new-id4866748722%_)
                                                (cons _%$%hd4867248739%_
                                                      _%$%id4866848723%_))
                                               (_%$%g4864948682%_
                                                _%$%g4865048686%_))))
                                       (_%$%g4864948682%_ _%$%g4865048686%_))))
                               (_%$%g4864948682%_ _%$%g4865048686%_))))
                       (let ((_%$%new-id4866948755%_
                              (reverse _%$%new-id4866748722%_))
                             (_%$%id4867048757%_ (reverse _%$%id4866848723%_)))
                         (if (and (gx#identifier-list?
                                   (foldr (lambda (_%$%g4878048783%_
                                                   _%$%g4878148786%_)
                                            (cons _%$%g4878048783%_
                                                  _%$%g4878148786%_))
                                          '()
                                          _%$%id4867048757%_))
                                  (gx#identifier-list?
                                   (foldr (lambda (_%$%g4878848791%_
                                                   _%$%g4878948794%_)
                                            (cons _%$%g4878848791%_
                                                  _%$%g4878948794%_))
                                          '()
                                          _%$%new-id4866948755%_)))
                             (let* ((_%keytab48797%_ (make-hash-table))
                                    (_%found48800%_ (make-hash-table))
                                    (_%_48823%_
                                     (for-each
                                      (lambda (_%id48803%_ _%new-id48805%_)
                                        (hash-put!
                                         _%keytab48797%_
                                         (gx#core-identifier-key _%id48803%_)
                                         (gx#core-identifier-key
                                          _%new-id48805%_)))
                                      (foldr (lambda (_%$%g4880648809%_
                                                      _%$%g4880748812%_)
                                               (cons _%$%g4880648809%_
                                                     _%$%g4880748812%_))
                                             '()
                                             _%$%id4867048757%_)
                                      (foldr (lambda (_%$%g4881448817%_
                                                      _%$%g4881548820%_)
                                               (cons _%$%g4881448817%_
                                                     _%$%g4881548820%_))
                                             '()
                                             _%$%new-id4866948755%_)))
                                    (_%exports48826%_
                                     (gx#core-expand-export-source
                                      _%$%hd4865848703%_))
                                    (_%fold-e48854%_
                                     (letrec ((_%fold-e48829%_
                                               (lambda (_%out48832%_
                                                        _%r48834%_)
                                                 (if (gx#module-export?
                                                      _%out48832%_)
                                                     (let* ((_%name48838%_
                                                             (gx#module-export-name
                                                              _%out48832%_))
                                                            (_%$e48841%_
                                                             (hash-get
                                                              _%keytab48797%_
                                                              _%name48838%_)))
                                                       (if _%$e48841%_
                                                           (let ()
                                                             (hash-put!
                                                              _%found48800%_
                                                              _%name48838%_
                                                              '#t)
                                                             (cons (|gerbil/core/module-sugar[1]#module-export-rename|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%out48832%_
                            _%$e48841%_)
                           _%r48834%_))
                   (cons _%out48832%_ _%r48834%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#export-set?
                                                          _%out48832%_)
                                                         (foldl _%fold-e48829%_
                                                                _%r48834%_
                                                                (gx#export-set-exports
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out48832%_))
                 (cons _%out48832%_ _%r48834%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%fold-e48829%_))
                                    (_%new-exports48857%_
                                     (foldl _%fold-e48854%_
                                            '()
                                            _%exports48826%_)))
                               (for-each
                                (lambda (_%id48862%_)
                                  (if (hash-get
                                       _%found48800%_
                                       (gx#core-identifier-key _%id48862%_))
                                      '#!void
                                      (gx#raise-syntax-error
                                       '#f
                                       '"bad syntax; identifier is not in the export set"
                                       _%stx48646%_
                                       _%id48862%_)))
                                (foldr (lambda (_%$%g4886448867%_
                                                _%$%g4886548870%_)
                                         (cons _%$%g4886448867%_
                                               _%$%g4886548870%_))
                                       '()
                                       _%$%id4867048757%_))
                               (cons 'begin: _%new-exports48857%_))
                             (_%$%g4864948682%_ _%$%g4865048686%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop4866348715%_
                                                  _%$%target4866048709%_
                                                  '()
                                                  '()))
                                               (_%$%g4864948682%_
                                                _%$%g4865048686%_)))))
                                     (_%$%g4864948682%_ _%$%g4865048686%_))))
                             (_%$%g4864948682%_ _%$%g4865048686%_))))
                     (_%$%g4864948682%_ _%$%g4865048686%_)))))
         (_%$%g4864848873%_ _%stx48646%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_%stx48878%_)
       (let* ((_%$%g4888148899%_
               (lambda (_%$%g4888248895%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4888248895%_)))
              (_%$%g4888048984%_
               (lambda (_%$%g4888248903%_)
                 (if (gx#stx-pair? _%$%g4888248903%_)
                     (let ((_%$%e4888548906%_ (gx#syntax-e _%$%g4888248903%_)))
                       (let ((_%$%hd4888648910%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4888548906%_)))
                             (_%$%tl4888748913%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4888548906%_))))
                         (if (gx#stx-pair? _%$%tl4888748913%_)
                             (let ((_%$%e4888848916%_
                                    (gx#syntax-e _%$%tl4888748913%_)))
                               (let ((_%$%hd4888948920%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e4888848916%_)))
                                     (_%$%tl4889048923%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e4888848916%_))))
                                 (if (gx#stx-pair? _%$%tl4889048923%_)
                                     (let ((_%$%e4889148926%_
                                            (gx#syntax-e _%$%tl4889048923%_)))
                                       (let ((_%$%hd4889248930%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e4889148926%_)))
                                             (_%$%tl4889348933%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e4889148926%_))))
                                         (if (gx#stx-null? _%$%tl4889348933%_)
                                             (if (gx#identifier?
                                                  _%$%hd4889248930%_)
                                                 (let* ((_%pre48954%_
                                                         (gx#stx-e
                                                          _%$%hd4889248930%_))
                                                        (_%exports48957%_
                                                         (gx#core-expand-export-source
                                                          _%$%hd4888948920%_))
                                                        (_%rename-e48963%_
                                                         (lambda (_%name48960%_)
                                                           (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                            _%name48960%_
                                                            _%pre48954%_)))
                                                        (_%fold-e48979%_
                                                         (letrec ((_%fold-e48966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%out48969%_ _%r48971%_)
                             (if (gx#module-export? _%out48969%_)
                                 (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                        _%out48969%_
                                        (_%rename-e48963%_
                                         (gx#module-export-name _%out48969%_)))
                                       _%r48971%_)
                                 (if (gx#export-set? _%out48969%_)
                                     (foldl _%fold-e48966%_
                                            _%r48971%_
                                            (gx#export-set-exports
                                             _%out48969%_))
                                     (cons _%out48969%_ _%r48971%_))))))
                   _%fold-e48966%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons 'begin:
                                                         (foldl _%fold-e48979%_
                                                                '()
                                                                _%exports48957%_)))
                                                 (_%$%g4888148899%_
                                                  _%$%g4888248903%_))
                                             (_%$%g4888148899%_
                                              _%$%g4888248903%_))))
                                     (_%$%g4888148899%_ _%$%g4888248903%_))))
                             (_%$%g4888148899%_ _%$%g4888248903%_))))
                     (_%$%g4888148899%_ _%$%g4888248903%_)))))
         (_%$%g4888048984%_ _%stx48878%_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_%stx48988%_)
       (letrec ((_%identifiers48991%_
                 (lambda (_%id49219%_ _%unchecked?49221%_)
                   (let ((_%info49223%_
                          (gx#syntax-local-value _%id49219%_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%info49223%_))
                         (cons _%id49219%_
                               (cons (let ((__obj49520 _%info49223%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj49520
                                              'gerbil/core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj49520
                                              '4
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj49520
                                            'type-descriptor)))
                                     (foldr cons
                                            (cons (let ((__obj49521
                                                         _%info49223%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj49521
                                                           'gerbil/core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj49521
                                                           '15
                                                           '#f
                                                           '#f))
                                                        (unchecked-slot-ref
                                                         __obj49521
                                                         'predicate)))
                                                  (foldr cons
                                                         (foldr cons
                                                                (if _%unchecked?49221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons
                                   (map cdr
                                        (let ((__obj49522 _%info49223%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj49522
                                                 'gerbil/core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj49522
                                                 '19
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj49522
                                               'unchecked-mutators))))
                                   (map cdr
                                        (let ((__obj49523 _%info49223%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj49523
                                                 'gerbil/core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj49523
                                                 '18
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj49523
                                               'unchecked-accessors)))))
                            '())
                        (map cdr
                             (let ((__obj49524 _%info49223%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj49524
                                      'gerbil/core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj49524
                                      '17
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj49524
                                    'mutators)))))
                 (map cdr
                      (let ((__obj49525 _%info49223%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj49525
                               'gerbil/core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj49525
                               '16
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj49525 'accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_%ctor49226%_
                                                   (let ((__obj49526
                                                          _%info49223%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj49526
                                                            'gerbil/core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj49526
                                                            '14
                                                            '#f
                                                            '#f))
                                                         (unchecked-slot-ref
                                                          __obj49526
                                                          'constructor)))))
                                              (if _%ctor49226%_
                                                  (cons _%ctor49226%_ '())
                                                  '())))))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _%stx48988%_
                          _%id49219%_))))))
         (let* ((_%__stx4946149462%_ _%stx48988%_)
                (_%$%g4899549036%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%__stx4946149462%_))))
           (let ((_%__kont4946449465%_
                  (lambda (_%$%g4899749180%_ _%$%g4899849182%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%$%g4920149203%_)
                              (_%identifiers48991%_
                               _%$%g4920149203%_
                               (gx#stx-e _%$%g4899849182%_)))
                            (foldr (lambda (_%$%g4920649209%_
                                            _%$%g4920749212%_)
                                     (cons _%$%g4920649209%_
                                           _%$%g4920749212%_))
                                   '()
                                   _%$%g4899749180%_))))))
                 (_%__kont4946849469%_
                  (lambda (_%$%g4901849081%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%$%g4909749099%_)
                              (_%identifiers48991%_ _%$%g4909749099%_ '#f))
                            (foldr (lambda (_%$%g4910249105%_
                                            _%$%g4910349108%_)
                                     (cons _%$%g4910249105%_
                                           _%$%g4910349108%_))
                                   '()
                                   _%$%g4901849081%_)))))))
             (let* ((_%__match4951849519%_
                     (lambda (_%$%e4901949043%_
                              _%$%hd4902049047%_
                              _%$%tl4902149050%_
                              _%__splice4947049471%_
                              _%$%target4902249053%_
                              _%$%tl4902449056%_)
                       (letrec ((_%$%loop4902549059%_
                                 (lambda (_%$%hd4902349063%_
                                          _%$%id4902949066%_)
                                   (if (gx#stx-pair? _%$%hd4902349063%_)
                                       (let ((_%$%e4902649068%_
                                              (gx#syntax-e
                                               _%$%hd4902349063%_)))
                                         (let ((_%$%lp-tl4902849075%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e4902649068%_)))
                                               (_%$%lp-hd4902749072%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e4902649068%_))))
                                           (_%$%loop4902549059%_
                                            _%$%lp-tl4902849075%_
                                            (cons _%$%lp-hd4902749072%_
                                                  _%$%id4902949066%_))))
                                       (let ((_%$%id4903049078%_
                                              (reverse _%$%id4902949066%_)))
                                         (_%__kont4946849469%_
                                          _%$%id4903049078%_))))))
                         (_%$%loop4902549059%_ _%$%target4902249053%_ '()))))
                    (_%__match4950449505%_
                     (lambda (_%$%e4899949118%_
                              _%$%hd4900049122%_
                              _%$%tl4900149125%_
                              _%$%e4900249128%_
                              _%$%hd4900349132%_
                              _%$%tl4900449135%_
                              _%$%e4900549138%_
                              _%$%e4900649142%_
                              _%$%hd4900749146%_
                              _%$%tl4900849149%_
                              _%__splice4946649467%_
                              _%$%target4900949152%_
                              _%$%tl4901149155%_)
                       (letrec ((_%$%loop4901249158%_
                                 (lambda (_%$%hd4901049162%_
                                          _%$%id4901649165%_)
                                   (if (gx#stx-pair? _%$%hd4901049162%_)
                                       (let ((_%$%e4901349167%_
                                              (gx#syntax-e
                                               _%$%hd4901049162%_)))
                                         (let ((_%$%lp-tl4901549174%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e4901349167%_)))
                                               (_%$%lp-hd4901449171%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e4901349167%_))))
                                           (_%$%loop4901249158%_
                                            _%$%lp-tl4901549174%_
                                            (cons _%$%lp-hd4901449171%_
                                                  _%$%id4901649165%_))))
                                       (let ((_%$%id4901749177%_
                                              (reverse _%$%id4901649165%_)))
                                         (_%__kont4946449465%_
                                          _%$%id4901749177%_
                                          _%$%hd4900749146%_))))))
                         (_%$%loop4901249158%_ _%$%target4900949152%_ '())))))
               (if (gx#stx-pair? _%__stx4946149462%_)
                   (let ((_%$%e4899949118%_ (gx#syntax-e _%__stx4946149462%_)))
                     (let ((_%$%tl4900149125%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e4899949118%_)))
                           (_%$%hd4900049122%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e4899949118%_))))
                       (if (gx#stx-pair? _%$%tl4900149125%_)
                           (let ((_%$%e4900249128%_
                                  (gx#syntax-e _%$%tl4900149125%_)))
                             (let ((_%$%tl4900449135%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e4900249128%_)))
                                   (_%$%hd4900349132%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e4900249128%_))))
                               (if (gx#stx-datum? _%$%hd4900349132%_)
                                   (let ((_%$%e4900549138%_
                                          (gx#stx-e _%$%hd4900349132%_)))
                                     (if (equal? _%$%e4900549138%_ 'unchecked:)
                                         (if (gx#stx-pair? _%$%tl4900449135%_)
                                             (let ((_%$%e4900649142%_
                                                    (gx#syntax-e
                                                     _%$%tl4900449135%_)))
                                               (let ((_%$%tl4900849149%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e4900649142%_)))
                                                     (_%$%hd4900749146%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e4900649142%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%$%tl4900849149%_)
                                                     (let ((_%__splice4946649467%_
                                                            (gx#syntax-split-splice->vector
                                                             _%$%tl4900849149%_
                                                             '0)))
                                                       (let ((_%$%tl4901149155%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4946649467%_ '1)))
                     (_%$%target4900949152%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4946649467%_ '0))))
                 (if (gx#stx-null? _%$%tl4901149155%_)
                     (_%__match4950449505%_
                      _%$%e4899949118%_
                      _%$%hd4900049122%_
                      _%$%tl4900149125%_
                      _%$%e4900249128%_
                      _%$%hd4900349132%_
                      _%$%tl4900449135%_
                      _%$%e4900549138%_
                      _%$%e4900649142%_
                      _%$%hd4900749146%_
                      _%$%tl4900849149%_
                      _%__splice4946649467%_
                      _%$%target4900949152%_
                      _%$%tl4901149155%_)
                     (if (gx#stx-pair/null? _%$%tl4900149125%_)
                         (let ((_%__splice4947049471%_
                                (gx#syntax-split-splice->vector
                                 _%$%tl4900149125%_
                                 '0)))
                           (let ((_%$%tl4902449056%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4947049471%_ '1)))
                                 (_%$%target4902249053%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4947049471%_ '0))))
                             (if (gx#stx-null? _%$%tl4902449056%_)
                                 (_%__match4951849519%_
                                  _%$%e4899949118%_
                                  _%$%hd4900049122%_
                                  _%$%tl4900149125%_
                                  _%__splice4947049471%_
                                  _%$%target4902249053%_
                                  _%$%tl4902449056%_)
                                 (let ()
                                   (declare (not safe))
                                   (_%$%g4899549036%_)))))
                         (let () (declare (not safe)) (_%$%g4899549036%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _%$%tl4900149125%_)
                                                         (let ((_%__splice4947049471%_
                                                                (gx#syntax-split-splice->vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl4900149125%_
                         '0)))
                   (let ((_%$%tl4902449056%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4947049471%_ '1)))
                         (_%$%target4902249053%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4947049471%_ '0))))
                     (if (gx#stx-null? _%$%tl4902449056%_)
                         (_%__match4951849519%_
                          _%$%e4899949118%_
                          _%$%hd4900049122%_
                          _%$%tl4900149125%_
                          _%__splice4947049471%_
                          _%$%target4902249053%_
                          _%$%tl4902449056%_)
                         (let () (declare (not safe)) (_%$%g4899549036%_)))))
                 (let () (declare (not safe)) (_%$%g4899549036%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _%$%tl4900149125%_)
                                                 (let ((_%__splice4947049471%_
                                                        (gx#syntax-split-splice->vector
                                                         _%$%tl4900149125%_
                                                         '0)))
                                                   (let ((_%$%tl4902449056%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4947049471%_
                                                             '1)))
                                                         (_%$%target4902249053%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4947049471%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%$%tl4902449056%_)
                                                         (_%__match4951849519%_
                                                          _%$%e4899949118%_
                                                          _%$%hd4900049122%_
                                                          _%$%tl4900149125%_
                                                          _%__splice4947049471%_
                                                          _%$%target4902249053%_
                                                          _%$%tl4902449056%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%$%g4899549036%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%$%g4899549036%_))))
                                         (if (gx#stx-pair/null?
                                              _%$%tl4900149125%_)
                                             (let ((_%__splice4947049471%_
                                                    (gx#syntax-split-splice->vector
                                                     _%$%tl4900149125%_
                                                     '0)))
                                               (let ((_%$%tl4902449056%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4947049471%_
                                                         '1)))
                                                     (_%$%target4902249053%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4947049471%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%$%tl4902449056%_)
                                                     (_%__match4951849519%_
                                                      _%$%e4899949118%_
                                                      _%$%hd4900049122%_
                                                      _%$%tl4900149125%_
                                                      _%__splice4947049471%_
                                                      _%$%target4902249053%_
                                                      _%$%tl4902449056%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g4899549036%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%$%g4899549036%_)))))
                                   (if (gx#stx-pair/null? _%$%tl4900149125%_)
                                       (let ((_%__splice4947049471%_
                                              (gx#syntax-split-splice->vector
                                               _%$%tl4900149125%_
                                               '0)))
                                         (let ((_%$%tl4902449056%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4947049471%_
                                                   '1)))
                                               (_%$%target4902249053%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4947049471%_
                                                   '0))))
                                           (if (gx#stx-null?
                                                _%$%tl4902449056%_)
                                               (_%__match4951849519%_
                                                _%$%e4899949118%_
                                                _%$%hd4900049122%_
                                                _%$%tl4900149125%_
                                                _%__splice4947049471%_
                                                _%$%target4902249053%_
                                                _%$%tl4902449056%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g4899549036%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g4899549036%_))))))
                           (if (gx#stx-pair/null? _%$%tl4900149125%_)
                               (let ((_%__splice4947049471%_
                                      (gx#syntax-split-splice->vector
                                       _%$%tl4900149125%_
                                       '0)))
                                 (let ((_%$%tl4902449056%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4947049471%_
                                           '1)))
                                       (_%$%target4902249053%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4947049471%_
                                           '0))))
                                   (if (gx#stx-null? _%$%tl4902449056%_)
                                       (_%__match4951849519%_
                                        _%$%e4899949118%_
                                        _%$%hd4900049122%_
                                        _%$%tl4900149125%_
                                        _%__splice4947049471%_
                                        _%$%target4902249053%_
                                        _%$%tl4902449056%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g4899549036%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g4899549036%_))))))
                   (let () (declare (not safe)) (_%$%g4899549036%_)))))))))))
