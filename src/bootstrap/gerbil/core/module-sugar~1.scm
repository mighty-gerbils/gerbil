(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_%$stx47427%_)
      (let* ((_%__stx5021150212%_ _%$stx47427%_)
             (_%$%g4743247451%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx5021150212%_))))
        (let ((_%__kont5021450215%_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (_%__kont5021650217%_
               (lambda (_%$%g4743747478%_ _%$%g4743847480%_ _%$%g4743947481%_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _%$%g4743847480%_
                                   (cons (cons _%$%g4743947481%_
                                               _%$%g4743747478%_)
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _%$%g4743847480%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? _%__stx5021150212%_)
              (let ((_%$%e4743447503%_ (gx#syntax-e _%__stx5021150212%_)))
                (let ((_%$%tl4743647510%_
                       (let () (declare (not safe)) (##cdr _%$%e4743447503%_)))
                      (_%$%hd4743547507%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e4743447503%_))))
                  (if (gx#stx-null? _%$%tl4743647510%_)
                      (_%__kont5021450215%_)
                      (if (gx#stx-pair? _%$%tl4743647510%_)
                          (let ((_%$%e4744347468%_
                                 (gx#syntax-e _%$%tl4743647510%_)))
                            (let ((_%$%tl4744547475%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e4744347468%_)))
                                  (_%$%hd4744447472%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e4744347468%_))))
                              (_%__kont5021650217%_
                               _%$%tl4744547475%_
                               _%$%hd4744447472%_
                               _%$%hd4743547507%_)))
                          (let () (declare (not safe)) (_%$%g4743247451%_))))))
              (let () (declare (not safe)) (_%$%g4743247451%_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_%$stx47521%_)
      (let* ((_%__stx5024150242%_ _%$stx47521%_)
             (_%$%g4752647566%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx5024150242%_))))
        (let ((_%__kont5024450245%_
               (lambda (_%$%g4752847702%_ _%$%g4752947704%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%$%g4752947704%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _%$%g4752847702%_ '()))
                                   '())))))
              (_%__kont5024650247%_
               (lambda (_%$%g4753947631%_
                        _%$%g4754047633%_
                        _%$%g4754147634%_
                        _%$%g4754247635%_)
                 (cons _%$%g4754247635%_
                       (cons _%$%g4754147634%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%$%g4754047633%_
                                               (foldr (lambda (_%$%g4765647659%_
                                                               _%$%g4765747662%_)
                                                        (cons _%$%g4765647659%_
                                                              _%$%g4765747662%_))
                                                      '()
                                                      _%$%g4753947631%_)))
                                   '()))))))
          (let* ((_%__match5029650297%_
                  (lambda (_%$%e4754347573%_
                           _%$%hd4754447577%_
                           _%$%tl4754547580%_
                           _%$%e4754647583%_
                           _%$%hd4754747587%_
                           _%$%tl4754847590%_
                           _%$%e4754947593%_
                           _%$%hd4755047597%_
                           _%$%tl4755147600%_
                           _%__splice5024850249%_
                           _%$%target4755247603%_
                           _%$%tl4755447606%_)
                    (letrec ((_%$%loop4755547609%_
                              (lambda (_%$%hd4755347613%_ _%$%body4755947616%_)
                                (if (gx#stx-pair? _%$%hd4755347613%_)
                                    (let ((_%$%e4755647618%_
                                           (gx#syntax-e _%$%hd4755347613%_)))
                                      (let ((_%$%lp-tl4755847625%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4755647618%_)))
                                            (_%$%lp-hd4755747622%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4755647618%_))))
                                        (_%$%loop4755547609%_
                                         _%$%lp-tl4755847625%_
                                         (cons _%$%lp-hd4755747622%_
                                               _%$%body4755947616%_))))
                                    (let ((_%$%body4756047628%_
                                           (reverse _%$%body4755947616%_)))
                                      (let ((_%$%g4753947631%_
                                             _%$%body4756047628%_)
                                            (_%$%g4754047633%_
                                             _%$%tl4755147600%_)
                                            (_%$%g4754147634%_
                                             _%$%hd4755047597%_)
                                            (_%$%g4754247635%_
                                             _%$%hd4754447577%_))
                                        (if (gx#identifier? _%$%g4754147634%_)
                                            (_%__kont5024650247%_
                                             _%$%g4753947631%_
                                             _%$%g4754047633%_
                                             _%$%g4754147634%_
                                             _%$%g4754247635%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g4752647566%_)))))))))
                      (_%$%loop4755547609%_ _%$%target4755247603%_ '()))))
                 (_%__match5027050271%_
                  (lambda (_%$%e4753047672%_
                           _%$%hd4753147676%_
                           _%$%tl4753247679%_
                           _%$%e4753347682%_
                           _%$%hd4753447686%_
                           _%$%tl4753547689%_
                           _%$%e4753647692%_
                           _%$%hd4753747696%_
                           _%$%tl4753847699%_)
                    (let ((_%$%g4752847702%_ _%$%hd4753747696%_)
                          (_%$%g4752947704%_ _%$%hd4753447686%_))
                      (if (gx#identifier? _%$%g4752947704%_)
                          (_%__kont5024450245%_
                           _%$%g4752847702%_
                           _%$%g4752947704%_)
                          (if (gx#stx-pair? _%$%hd4753447686%_)
                              (let ((_%$%e4754947593%_
                                     (gx#syntax-e _%$%hd4753447686%_)))
                                (let ((_%$%tl4755147600%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4754947593%_)))
                                      (_%$%hd4755047597%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4754947593%_))))
                                  (if (gx#stx-pair/null? _%$%tl4753547689%_)
                                      (let ((_%__splice5024850249%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl4753547689%_
                                              '0)))
                                        (let ((_%$%tl4755447606%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice5024850249%_
                                                  '1)))
                                              (_%$%target4755247603%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice5024850249%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl4755447606%_)
                                              (_%__match5029650297%_
                                               _%$%e4753047672%_
                                               _%$%hd4753147676%_
                                               _%$%tl4753247679%_
                                               _%$%e4753347682%_
                                               _%$%hd4753447686%_
                                               _%$%tl4753547689%_
                                               _%$%e4754947593%_
                                               _%$%hd4755047597%_
                                               _%$%tl4755147600%_
                                               _%__splice5024850249%_
                                               _%$%target4755247603%_
                                               _%$%tl4755447606%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g4752647566%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g4752647566%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g4752647566%_))))))))
            (if (gx#stx-pair? _%__stx5024150242%_)
                (let ((_%$%e4753047672%_ (gx#syntax-e _%__stx5024150242%_)))
                  (let ((_%$%tl4753247679%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4753047672%_)))
                        (_%$%hd4753147676%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4753047672%_))))
                    (if (gx#stx-pair? _%$%tl4753247679%_)
                        (let ((_%$%e4753347682%_
                               (gx#syntax-e _%$%tl4753247679%_)))
                          (let ((_%$%tl4753547689%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4753347682%_)))
                                (_%$%hd4753447686%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4753347682%_))))
                            (if (gx#stx-pair? _%$%tl4753547689%_)
                                (let ((_%$%e4753647692%_
                                       (gx#syntax-e _%$%tl4753547689%_)))
                                  (let ((_%$%tl4753847699%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4753647692%_)))
                                        (_%$%hd4753747696%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4753647692%_))))
                                    (if (gx#stx-null? _%$%tl4753847699%_)
                                        (_%__match5027050271%_
                                         _%$%e4753047672%_
                                         _%$%hd4753147676%_
                                         _%$%tl4753247679%_
                                         _%$%e4753347682%_
                                         _%$%hd4753447686%_
                                         _%$%tl4753547689%_
                                         _%$%e4753647692%_
                                         _%$%hd4753747696%_
                                         _%$%tl4753847699%_)
                                        (if (gx#stx-pair? _%$%hd4753447686%_)
                                            (let ((_%$%e4754947593%_
                                                   (gx#syntax-e
                                                    _%$%hd4753447686%_)))
                                              (let ((_%$%tl4755147600%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4754947593%_)))
                                                    (_%$%hd4755047597%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4754947593%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4753547689%_)
                                                    (let ((_%__splice5024850249%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4753547689%_
                                                            '0)))
                                                      (let ((_%$%tl4755447606%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice5024850249%_ '1)))
                    (_%$%target4755247603%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice5024850249%_ '0))))
                (if (gx#stx-null? _%$%tl4755447606%_)
                    (_%__match5029650297%_
                     _%$%e4753047672%_
                     _%$%hd4753147676%_
                     _%$%tl4753247679%_
                     _%$%e4753347682%_
                     _%$%hd4753447686%_
                     _%$%tl4753547689%_
                     _%$%e4754947593%_
                     _%$%hd4755047597%_
                     _%$%tl4755147600%_
                     _%__splice5024850249%_
                     _%$%target4755247603%_
                     _%$%tl4755447606%_)
                    (let () (declare (not safe)) (_%$%g4752647566%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g4752647566%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g4752647566%_))))))
                                (if (gx#stx-pair? _%$%hd4753447686%_)
                                    (let ((_%$%e4754947593%_
                                           (gx#syntax-e _%$%hd4753447686%_)))
                                      (let ((_%$%tl4755147600%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4754947593%_)))
                                            (_%$%hd4755047597%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4754947593%_))))
                                        (if (gx#stx-pair/null?
                                             _%$%tl4753547689%_)
                                            (let ((_%__splice5024850249%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4753547689%_
                                                    '0)))
                                              (let ((_%$%tl4755447606%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5024850249%_
                                                        '1)))
                                                    (_%$%target4755247603%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5024850249%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4755447606%_)
                                                    (_%__match5029650297%_
                                                     _%$%e4753047672%_
                                                     _%$%hd4753147676%_
                                                     _%$%tl4753247679%_
                                                     _%$%e4753347682%_
                                                     _%$%hd4753447686%_
                                                     _%$%tl4753547689%_
                                                     _%$%e4754947593%_
                                                     _%$%hd4755047597%_
                                                     _%$%tl4755147600%_
                                                     _%__splice5024850249%_
                                                     _%$%target4755247603%_
                                                     _%$%tl4755447606%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g4752647566%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g4752647566%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g4752647566%_))))))
                        (let () (declare (not safe)) (_%$%g4752647566%_)))))
                (let () (declare (not safe)) (_%$%g4752647566%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_%$stx47724%_)
      (let* ((_%__stx5029950300%_ _%$stx47724%_)
             (_%$%g4772947769%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx5029950300%_))))
        (let ((_%__kont5030250303%_
               (lambda (_%$%g4773147905%_ _%$%g4773247907%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%$%g4773247907%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _%$%g4773147905%_ '()))
                                   '())))))
              (_%__kont5030450305%_
               (lambda (_%$%g4774247834%_
                        _%$%g4774347836%_
                        _%$%g4774447837%_
                        _%$%g4774547838%_)
                 (cons _%$%g4774547838%_
                       (cons _%$%g4774447837%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%$%g4774347836%_
                                               (foldr (lambda (_%$%g4785947862%_
                                                               _%$%g4786047865%_)
                                                        (cons _%$%g4785947862%_
                                                              _%$%g4786047865%_))
                                                      '()
                                                      _%$%g4774247834%_)))
                                   '()))))))
          (let* ((_%__match5035450355%_
                  (lambda (_%$%e4774647776%_
                           _%$%hd4774747780%_
                           _%$%tl4774847783%_
                           _%$%e4774947786%_
                           _%$%hd4775047790%_
                           _%$%tl4775147793%_
                           _%$%e4775247796%_
                           _%$%hd4775347800%_
                           _%$%tl4775447803%_
                           _%__splice5030650307%_
                           _%$%target4775547806%_
                           _%$%tl4775747809%_)
                    (letrec ((_%$%loop4775847812%_
                              (lambda (_%$%hd4775647816%_ _%$%body4776247819%_)
                                (if (gx#stx-pair? _%$%hd4775647816%_)
                                    (let ((_%$%e4775947821%_
                                           (gx#syntax-e _%$%hd4775647816%_)))
                                      (let ((_%$%lp-tl4776147828%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4775947821%_)))
                                            (_%$%lp-hd4776047825%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4775947821%_))))
                                        (_%$%loop4775847812%_
                                         _%$%lp-tl4776147828%_
                                         (cons _%$%lp-hd4776047825%_
                                               _%$%body4776247819%_))))
                                    (let ((_%$%body4776347831%_
                                           (reverse _%$%body4776247819%_)))
                                      (let ((_%$%g4774247834%_
                                             _%$%body4776347831%_)
                                            (_%$%g4774347836%_
                                             _%$%tl4775447803%_)
                                            (_%$%g4774447837%_
                                             _%$%hd4775347800%_)
                                            (_%$%g4774547838%_
                                             _%$%hd4774747780%_))
                                        (if (gx#identifier? _%$%g4774447837%_)
                                            (_%__kont5030450305%_
                                             _%$%g4774247834%_
                                             _%$%g4774347836%_
                                             _%$%g4774447837%_
                                             _%$%g4774547838%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g4772947769%_)))))))))
                      (_%$%loop4775847812%_ _%$%target4775547806%_ '()))))
                 (_%__match5032850329%_
                  (lambda (_%$%e4773347875%_
                           _%$%hd4773447879%_
                           _%$%tl4773547882%_
                           _%$%e4773647885%_
                           _%$%hd4773747889%_
                           _%$%tl4773847892%_
                           _%$%e4773947895%_
                           _%$%hd4774047899%_
                           _%$%tl4774147902%_)
                    (let ((_%$%g4773147905%_ _%$%hd4774047899%_)
                          (_%$%g4773247907%_ _%$%hd4773747889%_))
                      (if (gx#identifier? _%$%g4773247907%_)
                          (_%__kont5030250303%_
                           _%$%g4773147905%_
                           _%$%g4773247907%_)
                          (if (gx#stx-pair? _%$%hd4773747889%_)
                              (let ((_%$%e4775247796%_
                                     (gx#syntax-e _%$%hd4773747889%_)))
                                (let ((_%$%tl4775447803%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4775247796%_)))
                                      (_%$%hd4775347800%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4775247796%_))))
                                  (if (gx#stx-pair/null? _%$%tl4773847892%_)
                                      (let ((_%__splice5030650307%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl4773847892%_
                                              '0)))
                                        (let ((_%$%tl4775747809%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice5030650307%_
                                                  '1)))
                                              (_%$%target4775547806%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice5030650307%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl4775747809%_)
                                              (_%__match5035450355%_
                                               _%$%e4773347875%_
                                               _%$%hd4773447879%_
                                               _%$%tl4773547882%_
                                               _%$%e4773647885%_
                                               _%$%hd4773747889%_
                                               _%$%tl4773847892%_
                                               _%$%e4775247796%_
                                               _%$%hd4775347800%_
                                               _%$%tl4775447803%_
                                               _%__splice5030650307%_
                                               _%$%target4775547806%_
                                               _%$%tl4775747809%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g4772947769%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g4772947769%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g4772947769%_))))))))
            (if (gx#stx-pair? _%__stx5029950300%_)
                (let ((_%$%e4773347875%_ (gx#syntax-e _%__stx5029950300%_)))
                  (let ((_%$%tl4773547882%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4773347875%_)))
                        (_%$%hd4773447879%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4773347875%_))))
                    (if (gx#stx-pair? _%$%tl4773547882%_)
                        (let ((_%$%e4773647885%_
                               (gx#syntax-e _%$%tl4773547882%_)))
                          (let ((_%$%tl4773847892%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4773647885%_)))
                                (_%$%hd4773747889%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4773647885%_))))
                            (if (gx#stx-pair? _%$%tl4773847892%_)
                                (let ((_%$%e4773947895%_
                                       (gx#syntax-e _%$%tl4773847892%_)))
                                  (let ((_%$%tl4774147902%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4773947895%_)))
                                        (_%$%hd4774047899%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4773947895%_))))
                                    (if (gx#stx-null? _%$%tl4774147902%_)
                                        (_%__match5032850329%_
                                         _%$%e4773347875%_
                                         _%$%hd4773447879%_
                                         _%$%tl4773547882%_
                                         _%$%e4773647885%_
                                         _%$%hd4773747889%_
                                         _%$%tl4773847892%_
                                         _%$%e4773947895%_
                                         _%$%hd4774047899%_
                                         _%$%tl4774147902%_)
                                        (if (gx#stx-pair? _%$%hd4773747889%_)
                                            (let ((_%$%e4775247796%_
                                                   (gx#syntax-e
                                                    _%$%hd4773747889%_)))
                                              (let ((_%$%tl4775447803%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4775247796%_)))
                                                    (_%$%hd4775347800%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4775247796%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4773847892%_)
                                                    (let ((_%__splice5030650307%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4773847892%_
                                                            '0)))
                                                      (let ((_%$%tl4775747809%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice5030650307%_ '1)))
                    (_%$%target4775547806%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice5030650307%_ '0))))
                (if (gx#stx-null? _%$%tl4775747809%_)
                    (_%__match5035450355%_
                     _%$%e4773347875%_
                     _%$%hd4773447879%_
                     _%$%tl4773547882%_
                     _%$%e4773647885%_
                     _%$%hd4773747889%_
                     _%$%tl4773847892%_
                     _%$%e4775247796%_
                     _%$%hd4775347800%_
                     _%$%tl4775447803%_
                     _%__splice5030650307%_
                     _%$%target4775547806%_
                     _%$%tl4775747809%_)
                    (let () (declare (not safe)) (_%$%g4772947769%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g4772947769%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g4772947769%_))))))
                                (if (gx#stx-pair? _%$%hd4773747889%_)
                                    (let ((_%$%e4775247796%_
                                           (gx#syntax-e _%$%hd4773747889%_)))
                                      (let ((_%$%tl4775447803%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4775247796%_)))
                                            (_%$%hd4775347800%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4775247796%_))))
                                        (if (gx#stx-pair/null?
                                             _%$%tl4773847892%_)
                                            (let ((_%__splice5030650307%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4773847892%_
                                                    '0)))
                                              (let ((_%$%tl4775747809%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5030650307%_
                                                        '1)))
                                                    (_%$%target4775547806%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5030650307%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4775747809%_)
                                                    (_%__match5035450355%_
                                                     _%$%e4773347875%_
                                                     _%$%hd4773447879%_
                                                     _%$%tl4773547882%_
                                                     _%$%e4773647885%_
                                                     _%$%hd4773747889%_
                                                     _%$%tl4773847892%_
                                                     _%$%e4775247796%_
                                                     _%$%hd4775347800%_
                                                     _%$%tl4775447803%_
                                                     _%__splice5030650307%_
                                                     _%$%target4775547806%_
                                                     _%$%tl4775747809%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g4772947769%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g4772947769%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g4772947769%_))))))
                        (let () (declare (not safe)) (_%$%g4772947769%_)))))
                (let () (declare (not safe)) (_%$%g4772947769%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_%$stx47927%_)
      (let* ((_%__stx5035750358%_ _%$stx47927%_)
             (_%$%g4793247972%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx5035750358%_))))
        (let ((_%__kont5036050361%_
               (lambda (_%$%g4793448108%_ _%$%g4793548110%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%$%g4793548110%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _%$%g4793448108%_ '()))
                                   '())))))
              (_%__kont5036250363%_
               (lambda (_%$%g4794548037%_
                        _%$%g4794648039%_
                        _%$%g4794748040%_
                        _%$%g4794848041%_)
                 (cons _%$%g4794848041%_
                       (cons _%$%g4794748040%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%$%g4794648039%_
                                               (foldr (lambda (_%$%g4806248065%_
                                                               _%$%g4806348068%_)
                                                        (cons _%$%g4806248065%_
                                                              _%$%g4806348068%_))
                                                      '()
                                                      _%$%g4794548037%_)))
                                   '()))))))
          (let* ((_%__match5041250413%_
                  (lambda (_%$%e4794947979%_
                           _%$%hd4795047983%_
                           _%$%tl4795147986%_
                           _%$%e4795247989%_
                           _%$%hd4795347993%_
                           _%$%tl4795447996%_
                           _%$%e4795547999%_
                           _%$%hd4795648003%_
                           _%$%tl4795748006%_
                           _%__splice5036450365%_
                           _%$%target4795848009%_
                           _%$%tl4796048012%_)
                    (letrec ((_%$%loop4796148015%_
                              (lambda (_%$%hd4795948019%_ _%$%body4796548022%_)
                                (if (gx#stx-pair? _%$%hd4795948019%_)
                                    (let ((_%$%e4796248024%_
                                           (gx#syntax-e _%$%hd4795948019%_)))
                                      (let ((_%$%lp-tl4796448031%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4796248024%_)))
                                            (_%$%lp-hd4796348028%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4796248024%_))))
                                        (_%$%loop4796148015%_
                                         _%$%lp-tl4796448031%_
                                         (cons _%$%lp-hd4796348028%_
                                               _%$%body4796548022%_))))
                                    (let ((_%$%body4796648034%_
                                           (reverse _%$%body4796548022%_)))
                                      (let ((_%$%g4794548037%_
                                             _%$%body4796648034%_)
                                            (_%$%g4794648039%_
                                             _%$%tl4795748006%_)
                                            (_%$%g4794748040%_
                                             _%$%hd4795648003%_)
                                            (_%$%g4794848041%_
                                             _%$%hd4795047983%_))
                                        (if (gx#identifier? _%$%g4794748040%_)
                                            (_%__kont5036250363%_
                                             _%$%g4794548037%_
                                             _%$%g4794648039%_
                                             _%$%g4794748040%_
                                             _%$%g4794848041%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g4793247972%_)))))))))
                      (_%$%loop4796148015%_ _%$%target4795848009%_ '()))))
                 (_%__match5038650387%_
                  (lambda (_%$%e4793648078%_
                           _%$%hd4793748082%_
                           _%$%tl4793848085%_
                           _%$%e4793948088%_
                           _%$%hd4794048092%_
                           _%$%tl4794148095%_
                           _%$%e4794248098%_
                           _%$%hd4794348102%_
                           _%$%tl4794448105%_)
                    (let ((_%$%g4793448108%_ _%$%hd4794348102%_)
                          (_%$%g4793548110%_ _%$%hd4794048092%_))
                      (if (gx#identifier? _%$%g4793548110%_)
                          (_%__kont5036050361%_
                           _%$%g4793448108%_
                           _%$%g4793548110%_)
                          (if (gx#stx-pair? _%$%hd4794048092%_)
                              (let ((_%$%e4795547999%_
                                     (gx#syntax-e _%$%hd4794048092%_)))
                                (let ((_%$%tl4795748006%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4795547999%_)))
                                      (_%$%hd4795648003%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4795547999%_))))
                                  (if (gx#stx-pair/null? _%$%tl4794148095%_)
                                      (let ((_%__splice5036450365%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl4794148095%_
                                              '0)))
                                        (let ((_%$%tl4796048012%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice5036450365%_
                                                  '1)))
                                              (_%$%target4795848009%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice5036450365%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl4796048012%_)
                                              (_%__match5041250413%_
                                               _%$%e4793648078%_
                                               _%$%hd4793748082%_
                                               _%$%tl4793848085%_
                                               _%$%e4793948088%_
                                               _%$%hd4794048092%_
                                               _%$%tl4794148095%_
                                               _%$%e4795547999%_
                                               _%$%hd4795648003%_
                                               _%$%tl4795748006%_
                                               _%__splice5036450365%_
                                               _%$%target4795848009%_
                                               _%$%tl4796048012%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g4793247972%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g4793247972%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g4793247972%_))))))))
            (if (gx#stx-pair? _%__stx5035750358%_)
                (let ((_%$%e4793648078%_ (gx#syntax-e _%__stx5035750358%_)))
                  (let ((_%$%tl4793848085%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4793648078%_)))
                        (_%$%hd4793748082%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4793648078%_))))
                    (if (gx#stx-pair? _%$%tl4793848085%_)
                        (let ((_%$%e4793948088%_
                               (gx#syntax-e _%$%tl4793848085%_)))
                          (let ((_%$%tl4794148095%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4793948088%_)))
                                (_%$%hd4794048092%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4793948088%_))))
                            (if (gx#stx-pair? _%$%tl4794148095%_)
                                (let ((_%$%e4794248098%_
                                       (gx#syntax-e _%$%tl4794148095%_)))
                                  (let ((_%$%tl4794448105%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4794248098%_)))
                                        (_%$%hd4794348102%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4794248098%_))))
                                    (if (gx#stx-null? _%$%tl4794448105%_)
                                        (_%__match5038650387%_
                                         _%$%e4793648078%_
                                         _%$%hd4793748082%_
                                         _%$%tl4793848085%_
                                         _%$%e4793948088%_
                                         _%$%hd4794048092%_
                                         _%$%tl4794148095%_
                                         _%$%e4794248098%_
                                         _%$%hd4794348102%_
                                         _%$%tl4794448105%_)
                                        (if (gx#stx-pair? _%$%hd4794048092%_)
                                            (let ((_%$%e4795547999%_
                                                   (gx#syntax-e
                                                    _%$%hd4794048092%_)))
                                              (let ((_%$%tl4795748006%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4795547999%_)))
                                                    (_%$%hd4795648003%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4795547999%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4794148095%_)
                                                    (let ((_%__splice5036450365%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4794148095%_
                                                            '0)))
                                                      (let ((_%$%tl4796048012%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice5036450365%_ '1)))
                    (_%$%target4795848009%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice5036450365%_ '0))))
                (if (gx#stx-null? _%$%tl4796048012%_)
                    (_%__match5041250413%_
                     _%$%e4793648078%_
                     _%$%hd4793748082%_
                     _%$%tl4793848085%_
                     _%$%e4793948088%_
                     _%$%hd4794048092%_
                     _%$%tl4794148095%_
                     _%$%e4795547999%_
                     _%$%hd4795648003%_
                     _%$%tl4795748006%_
                     _%__splice5036450365%_
                     _%$%target4795848009%_
                     _%$%tl4796048012%_)
                    (let () (declare (not safe)) (_%$%g4793247972%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g4793247972%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g4793247972%_))))))
                                (if (gx#stx-pair? _%$%hd4794048092%_)
                                    (let ((_%$%e4795547999%_
                                           (gx#syntax-e _%$%hd4794048092%_)))
                                      (let ((_%$%tl4795748006%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4795547999%_)))
                                            (_%$%hd4795648003%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4795547999%_))))
                                        (if (gx#stx-pair/null?
                                             _%$%tl4794148095%_)
                                            (let ((_%__splice5036450365%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4794148095%_
                                                    '0)))
                                              (let ((_%$%tl4796048012%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5036450365%_
                                                        '1)))
                                                    (_%$%target4795848009%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5036450365%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4796048012%_)
                                                    (_%__match5041250413%_
                                                     _%$%e4793648078%_
                                                     _%$%hd4793748082%_
                                                     _%$%tl4793848085%_
                                                     _%$%e4793948088%_
                                                     _%$%hd4794048092%_
                                                     _%$%tl4794148095%_
                                                     _%$%e4795547999%_
                                                     _%$%hd4795648003%_
                                                     _%$%tl4795748006%_
                                                     _%__splice5036450365%_
                                                     _%$%target4795848009%_
                                                     _%$%tl4796048012%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g4793247972%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g4793247972%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g4793247972%_))))))
                        (let () (declare (not safe)) (_%$%g4793247972%_)))))
                (let () (declare (not safe)) (_%$%g4793247972%_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_%stx48130%_)
       (let* ((_%$%g4813348153%_
               (lambda (_%$%g4813448149%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4813448149%_)))
              (_%$%g4813248222%_
               (lambda (_%$%g4813448157%_)
                 (if (gx#stx-pair? _%$%g4813448157%_)
                     (let ((_%$%e4813648160%_ (gx#syntax-e _%$%g4813448157%_)))
                       (let ((_%$%hd4813748164%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4813648160%_)))
                             (_%$%tl4813848167%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4813648160%_))))
                         (if (gx#stx-pair/null? _%$%tl4813848167%_)
                             (let ((_g50507_
                                    (gx#syntax-split-splice
                                     _%$%tl4813848167%_
                                     '0)))
                               (begin
                                 (let ((_g50508_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g50507_)
                                              (##values-length _g50507_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g50508_ 2)))
                                       (error "Context expects 2 values"
                                              _g50508_)))
                                 (let ((_%$%target4813948170%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g50507_ 0)))
                                       (_%$%tl4814148173%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g50507_ 1))))
                                   (if (gx#stx-null? _%$%tl4814148173%_)
                                       (letrec ((_%$%loop4814248176%_
                                                 (lambda (_%$%hd4814048180%_
                                                          _%$%body4814648183%_)
                                                   (if (gx#stx-pair?
                                                        _%$%hd4814048180%_)
                                                       (let ((_%$%e4814348185%_
                                                              (gx#syntax-e
                                                               _%$%hd4814048180%_)))
                                                         (let ((_%$%lp-hd4814448189%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e4814348185%_)))
                       (_%$%lp-tl4814548192%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e4814348185%_))))
                   (_%$%loop4814248176%_
                    _%$%lp-tl4814548192%_
                    (cons _%$%lp-hd4814448189%_ _%$%body4814648183%_))))
               (let ((_%$%body4814748195%_ (reverse _%$%body4814648183%_)))
                 (cons 'phi:
                       (cons '1
                             (foldr (lambda (_%$%g4821348216%_
                                             _%$%g4821448219%_)
                                      (cons _%$%g4821348216%_
                                            _%$%g4821448219%_))
                                    '()
                                    _%$%body4814748195%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%$%loop4814248176%_
                                          _%$%target4813948170%_
                                          '()))
                                       (_%$%g4813348153%_
                                        _%$%g4813448157%_)))))
                             (_%$%g4813348153%_ _%$%g4813448157%_))))
                     (_%$%g4813348153%_ _%$%g4813448157%_)))))
         (_%$%g4813248222%_ _%stx48130%_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_%stx48227%_)
       (let* ((_%$%g4823048250%_
               (lambda (_%$%g4823148246%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4823148246%_)))
              (_%$%g4822948319%_
               (lambda (_%$%g4823148254%_)
                 (if (gx#stx-pair? _%$%g4823148254%_)
                     (let ((_%$%e4823348257%_ (gx#syntax-e _%$%g4823148254%_)))
                       (let ((_%$%hd4823448261%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4823348257%_)))
                             (_%$%tl4823548264%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4823348257%_))))
                         (if (gx#stx-pair/null? _%$%tl4823548264%_)
                             (let ((_g50509_
                                    (gx#syntax-split-splice
                                     _%$%tl4823548264%_
                                     '0)))
                               (begin
                                 (let ((_g50510_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g50509_)
                                              (##values-length _g50509_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g50510_ 2)))
                                       (error "Context expects 2 values"
                                              _g50510_)))
                                 (let ((_%$%target4823648267%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g50509_ 0)))
                                       (_%$%tl4823848270%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g50509_ 1))))
                                   (if (gx#stx-null? _%$%tl4823848270%_)
                                       (letrec ((_%$%loop4823948273%_
                                                 (lambda (_%$%hd4823748277%_
                                                          _%$%body4824348280%_)
                                                   (if (gx#stx-pair?
                                                        _%$%hd4823748277%_)
                                                       (let ((_%$%e4824048282%_
                                                              (gx#syntax-e
                                                               _%$%hd4823748277%_)))
                                                         (let ((_%$%lp-hd4824148286%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e4824048282%_)))
                       (_%$%lp-tl4824248289%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e4824048282%_))))
                   (_%$%loop4823948273%_
                    _%$%lp-tl4824248289%_
                    (cons _%$%lp-hd4824148286%_ _%$%body4824348280%_))))
               (let ((_%$%body4824448292%_ (reverse _%$%body4824348280%_)))
                 (cons 'phi:
                       (cons '-1
                             (foldr (lambda (_%$%g4831048313%_
                                             _%$%g4831148316%_)
                                      (cons _%$%g4831048313%_
                                            _%$%g4831148316%_))
                                    '()
                                    _%$%body4824448292%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%$%loop4823948273%_
                                          _%$%target4823648267%_
                                          '()))
                                       (_%$%g4823048250%_
                                        _%$%g4823148254%_)))))
                             (_%$%g4823048250%_ _%$%g4823148254%_))))
                     (_%$%g4823048250%_ _%$%g4823148254%_)))))
         (_%$%g4822948319%_ _%stx48227%_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_%stx48324%_)
       (let* ((_%$%g4832748351%_
               (lambda (_%$%g4832848347%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4832848347%_)))
              (_%$%g4832648477%_
               (lambda (_%$%g4832848355%_)
                 (if (gx#stx-pair? _%$%g4832848355%_)
                     (let ((_%$%e4833148358%_ (gx#syntax-e _%$%g4832848355%_)))
                       (let ((_%$%hd4833248362%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4833148358%_)))
                             (_%$%tl4833348365%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4833148358%_))))
                         (if (gx#stx-pair? _%$%tl4833348365%_)
                             (let ((_%$%e4833448368%_
                                    (gx#syntax-e _%$%tl4833348365%_)))
                               (let ((_%$%hd4833548372%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e4833448368%_)))
                                     (_%$%tl4833648375%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e4833448368%_))))
                                 (if (gx#stx-pair/null? _%$%tl4833648375%_)
                                     (let ((_g50511_
                                            (gx#syntax-split-splice
                                             _%$%tl4833648375%_
                                             '0)))
                                       (begin
                                         (let ((_g50512_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50511_)
                                                      (##values-length
                                                       _g50511_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50512_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50512_)))
                                         (let ((_%$%target4833748378%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g50511_ 0)))
                                               (_%$%tl4833948381%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g50511_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl4833948381%_)
                                               (letrec ((_%$%loop4834048384%_
                                                         (lambda (_%$%hd4833848388%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%id4834448391%_)
                   (if (gx#stx-pair? _%$%hd4833848388%_)
                       (let ((_%$%e4834148393%_
                              (gx#syntax-e _%$%hd4833848388%_)))
                         (let ((_%$%lp-hd4834248397%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4834148393%_)))
                               (_%$%lp-tl4834348400%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4834148393%_))))
                           (_%$%loop4834048384%_
                            _%$%lp-tl4834348400%_
                            (cons _%$%lp-hd4834248397%_ _%$%id4834448391%_))))
                       (let ((_%$%id4834548403%_ (reverse _%$%id4834448391%_)))
                         (if (gx#identifier-list?
                              (foldr (lambda (_%$%g4842548428%_
                                              _%$%g4842648431%_)
                                       (cons _%$%g4842548428%_
                                             _%$%g4842648431%_))
                                     '()
                                     _%$%id4834548403%_))
                             (let* ((_%keys48442%_
                                     (gx#stx-map
                                      gx#core-identifier-key
                                      (foldr (lambda (_%$%g4843348436%_
                                                      _%$%g4843448439%_)
                                               (cons _%$%g4843348436%_
                                                     _%$%g4843448439%_))
                                             '()
                                             _%$%id4834548403%_)))
                                    (_%keytab48453%_
                                     (let ((_%ht48445%_ (make-hash-table)))
                                       (for-each
                                        (lambda (_%$%g4844748449%_)
                                          (hash-put!
                                           _%ht48445%_
                                           _%$%g4844748449%_
                                           '#t))
                                        _%keys48442%_)
                                       _%ht48445%_))
                                    (_%imports48456%_
                                     (gx#core-expand-import-source
                                      _%$%hd4833548372%_))
                                    (_%fold-e48472%_
                                     (letrec ((_%fold-e48459%_
                                               (lambda (_%in48462%_ _%r48464%_)
                                                 (if (gx#module-import?
                                                      _%in48462%_)
                                                     (if (hash-get
                                                          _%keytab48453%_
                                                          (gx#module-import-name
                                                           _%in48462%_))
                                                         (cons _%in48462%_
                                                               _%r48464%_)
                                                         _%r48464%_)
                                                     (if (gx#import-set?
                                                          _%in48462%_)
                                                         (foldl _%fold-e48459%_
                                                                _%r48464%_
                                                                (gx#import-set-imports
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in48462%_))
                 _%r48464%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%fold-e48459%_)))
                               (cons 'begin:
                                     (foldl _%fold-e48472%_
                                            '()
                                            _%imports48456%_)))
                             (_%$%g4832748351%_ _%$%g4832848355%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop4834048384%_
                                                  _%$%target4833748378%_
                                                  '()))
                                               (_%$%g4832748351%_
                                                _%$%g4832848355%_)))))
                                     (_%$%g4832748351%_ _%$%g4832848355%_))))
                             (_%$%g4832748351%_ _%$%g4832848355%_))))
                     (_%$%g4832748351%_ _%$%g4832848355%_)))))
         (_%$%g4832648477%_ _%stx48324%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_%stx48482%_)
       (let* ((_%$%g4848548509%_
               (lambda (_%$%g4848648505%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4848648505%_)))
              (_%$%g4848448635%_
               (lambda (_%$%g4848648513%_)
                 (if (gx#stx-pair? _%$%g4848648513%_)
                     (let ((_%$%e4848948516%_ (gx#syntax-e _%$%g4848648513%_)))
                       (let ((_%$%hd4849048520%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4848948516%_)))
                             (_%$%tl4849148523%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4848948516%_))))
                         (if (gx#stx-pair? _%$%tl4849148523%_)
                             (let ((_%$%e4849248526%_
                                    (gx#syntax-e _%$%tl4849148523%_)))
                               (let ((_%$%hd4849348530%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e4849248526%_)))
                                     (_%$%tl4849448533%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e4849248526%_))))
                                 (if (gx#stx-pair/null? _%$%tl4849448533%_)
                                     (let ((_g50513_
                                            (gx#syntax-split-splice
                                             _%$%tl4849448533%_
                                             '0)))
                                       (begin
                                         (let ((_g50514_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50513_)
                                                      (##values-length
                                                       _g50513_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50514_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50514_)))
                                         (let ((_%$%target4849548536%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g50513_ 0)))
                                               (_%$%tl4849748539%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g50513_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl4849748539%_)
                                               (letrec ((_%$%loop4849848542%_
                                                         (lambda (_%$%hd4849648546%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%id4850248549%_)
                   (if (gx#stx-pair? _%$%hd4849648546%_)
                       (let ((_%$%e4849948551%_
                              (gx#syntax-e _%$%hd4849648546%_)))
                         (let ((_%$%lp-hd4850048555%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4849948551%_)))
                               (_%$%lp-tl4850148558%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4849948551%_))))
                           (_%$%loop4849848542%_
                            _%$%lp-tl4850148558%_
                            (cons _%$%lp-hd4850048555%_ _%$%id4850248549%_))))
                       (let ((_%$%id4850348561%_ (reverse _%$%id4850248549%_)))
                         (if (gx#identifier-list?
                              (foldr (lambda (_%$%g4858348586%_
                                              _%$%g4858448589%_)
                                       (cons _%$%g4858348586%_
                                             _%$%g4858448589%_))
                                     '()
                                     _%$%id4850348561%_))
                             (let* ((_%keys48600%_
                                     (gx#stx-map
                                      gx#core-identifier-key
                                      (foldr (lambda (_%$%g4859148594%_
                                                      _%$%g4859248597%_)
                                               (cons _%$%g4859148594%_
                                                     _%$%g4859248597%_))
                                             '()
                                             _%$%id4850348561%_)))
                                    (_%keytab48611%_
                                     (let ((_%ht48603%_ (make-hash-table)))
                                       (for-each
                                        (lambda (_%$%g4860548607%_)
                                          (hash-put!
                                           _%ht48603%_
                                           _%$%g4860548607%_
                                           '#t))
                                        _%keys48600%_)
                                       _%ht48603%_))
                                    (_%imports48614%_
                                     (gx#core-expand-import-source
                                      _%$%hd4849348530%_))
                                    (_%fold-e48630%_
                                     (letrec ((_%fold-e48617%_
                                               (lambda (_%in48620%_ _%r48622%_)
                                                 (if (gx#module-import?
                                                      _%in48620%_)
                                                     (if (hash-get
                                                          _%keytab48611%_
                                                          (gx#module-import-name
                                                           _%in48620%_))
                                                         _%r48622%_
                                                         (cons _%in48620%_
                                                               _%r48622%_))
                                                     (if (gx#import-set?
                                                          _%in48620%_)
                                                         (foldl _%fold-e48617%_
                                                                _%r48622%_
                                                                (gx#import-set-imports
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in48620%_))
                 (cons _%in48620%_ _%r48622%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%fold-e48617%_)))
                               (cons 'begin:
                                     (foldl _%fold-e48630%_
                                            '()
                                            _%imports48614%_)))
                             (_%$%g4848548509%_ _%$%g4848648513%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop4849848542%_
                                                  _%$%target4849548536%_
                                                  '()))
                                               (_%$%g4848548509%_
                                                _%$%g4848648513%_)))))
                                     (_%$%g4848548509%_ _%$%g4848648513%_))))
                             (_%$%g4848548509%_ _%$%g4848648513%_))))
                     (_%$%g4848548509%_ _%$%g4848648513%_)))))
         (_%$%g4848448635%_ _%stx48482%_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_%in48687%_ _%rename48689%_)
      (gx#make-module-import
       (gx#module-import-source _%in48687%_)
       _%rename48689%_
       (gx#module-import-phi _%in48687%_)
       (gx#module-import-weak? _%in48687%_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_%name48640%_ _%pre48642%_)
      (let* ((_%$%name4864348651%_ _%name48640%_)
             (_%$%else4864548663%_
              (lambda () (make-symbol _%pre48642%_ _%name48640%_)))
             (_%$%K4864748671%_
              (lambda (_%mark48667%_ _%id48669%_)
                (cons (make-symbol _%pre48642%_ _%id48669%_) _%mark48667%_))))
        (if (pair? _%$%name4864348651%_)
            (let ((_%$%hd4864848675%_
                   (let () (declare (not safe)) (##car _%$%name4864348651%_)))
                  (_%$%tl4864948678%_
                   (let () (declare (not safe)) (##cdr _%$%name4864348651%_))))
              (let* ((_%id48681%_ _%$%hd4864848675%_)
                     (_%mark48684%_ _%$%tl4864948678%_))
                (_%$%K4864748671%_ _%mark48684%_ _%id48681%_)))
            (_%$%else4864548663%_)))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_%stx48691%_)
       (let* ((_%$%g4869448727%_
               (lambda (_%$%g4869548723%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4869548723%_)))
              (_%$%g4869348918%_
               (lambda (_%$%g4869548731%_)
                 (if (gx#stx-pair? _%$%g4869548731%_)
                     (let ((_%$%e4869948734%_ (gx#syntax-e _%$%g4869548731%_)))
                       (let ((_%$%hd4870048738%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4869948734%_)))
                             (_%$%tl4870148741%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4869948734%_))))
                         (if (gx#stx-pair? _%$%tl4870148741%_)
                             (let ((_%$%e4870248744%_
                                    (gx#syntax-e _%$%tl4870148741%_)))
                               (let ((_%$%hd4870348748%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e4870248744%_)))
                                     (_%$%tl4870448751%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e4870248744%_))))
                                 (if (gx#stx-pair/null? _%$%tl4870448751%_)
                                     (let ((_g50515_
                                            (gx#syntax-split-splice
                                             _%$%tl4870448751%_
                                             '0)))
                                       (begin
                                         (let ((_g50516_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50515_)
                                                      (##values-length
                                                       _g50515_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50516_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50516_)))
                                         (let ((_%$%target4870548754%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g50515_ 0)))
                                               (_%$%tl4870748757%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g50515_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl4870748757%_)
                                               (letrec ((_%$%loop4870848760%_
                                                         (lambda (_%$%hd4870648764%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%new-id4871248767%_
                          _%$%id4871348768%_)
                   (if (gx#stx-pair? _%$%hd4870648764%_)
                       (let ((_%$%e4870948770%_
                              (gx#syntax-e _%$%hd4870648764%_)))
                         (let ((_%$%lp-hd4871048774%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4870948770%_)))
                               (_%$%lp-tl4871148777%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4870948770%_))))
                           (if (gx#stx-pair? _%$%lp-hd4871048774%_)
                               (let ((_%$%e4871648780%_
                                      (gx#syntax-e _%$%lp-hd4871048774%_)))
                                 (let ((_%$%hd4871748784%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e4871648780%_)))
                                       (_%$%tl4871848787%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e4871648780%_))))
                                   (if (gx#stx-pair? _%$%tl4871848787%_)
                                       (let ((_%$%e4871948790%_
                                              (gx#syntax-e
                                               _%$%tl4871848787%_)))
                                         (let ((_%$%hd4872048794%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e4871948790%_)))
                                               (_%$%tl4872148797%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e4871948790%_))))
                                           (if (gx#stx-null?
                                                _%$%tl4872148797%_)
                                               (_%$%loop4870848760%_
                                                _%$%lp-tl4871148777%_
                                                (cons _%$%hd4872048794%_
                                                      _%$%new-id4871248767%_)
                                                (cons _%$%hd4871748784%_
                                                      _%$%id4871348768%_))
                                               (_%$%g4869448727%_
                                                _%$%g4869548731%_))))
                                       (_%$%g4869448727%_ _%$%g4869548731%_))))
                               (_%$%g4869448727%_ _%$%g4869548731%_))))
                       (let ((_%$%new-id4871448800%_
                              (reverse _%$%new-id4871248767%_))
                             (_%$%id4871548802%_ (reverse _%$%id4871348768%_)))
                         (if (and (gx#identifier-list?
                                   (foldr (lambda (_%$%g4882548828%_
                                                   _%$%g4882648831%_)
                                            (cons _%$%g4882548828%_
                                                  _%$%g4882648831%_))
                                          '()
                                          _%$%id4871548802%_))
                                  (gx#identifier-list?
                                   (foldr (lambda (_%$%g4883348836%_
                                                   _%$%g4883448839%_)
                                            (cons _%$%g4883348836%_
                                                  _%$%g4883448839%_))
                                          '()
                                          _%$%new-id4871448800%_)))
                             (let* ((_%keytab48842%_ (make-hash-table))
                                    (_%found48845%_ (make-hash-table))
                                    (_%_48868%_
                                     (for-each
                                      (lambda (_%id48848%_ _%new-id48850%_)
                                        (hash-put!
                                         _%keytab48842%_
                                         (gx#core-identifier-key _%id48848%_)
                                         (gx#core-identifier-key
                                          _%new-id48850%_)))
                                      (foldr (lambda (_%$%g4885148854%_
                                                      _%$%g4885248857%_)
                                               (cons _%$%g4885148854%_
                                                     _%$%g4885248857%_))
                                             '()
                                             _%$%id4871548802%_)
                                      (foldr (lambda (_%$%g4885948862%_
                                                      _%$%g4886048865%_)
                                               (cons _%$%g4885948862%_
                                                     _%$%g4886048865%_))
                                             '()
                                             _%$%new-id4871448800%_)))
                                    (_%imports48871%_
                                     (gx#core-expand-import-source
                                      _%$%hd4870348748%_))
                                    (_%fold-e48899%_
                                     (letrec ((_%fold-e48874%_
                                               (lambda (_%in48877%_ _%r48879%_)
                                                 (if (gx#module-import?
                                                      _%in48877%_)
                                                     (let* ((_%name48883%_
                                                             (gx#module-import-name
                                                              _%in48877%_))
                                                            (_%$e48886%_
                                                             (hash-get
                                                              _%keytab48842%_
                                                              _%name48883%_)))
                                                       (if _%$e48886%_
                                                           (let ()
                                                             (hash-put!
                                                              _%found48845%_
                                                              _%name48883%_
                                                              '#t)
                                                             (cons (|gerbil/core/module-sugar[1]#module-import-rename|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%in48877%_
                            _%$e48886%_)
                           _%r48879%_))
                   (cons _%in48877%_ _%r48879%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#import-set?
                                                          _%in48877%_)
                                                         (foldl _%fold-e48874%_
                                                                _%r48879%_
                                                                (gx#import-set-imports
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in48877%_))
                 (cons _%in48877%_ _%r48879%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%fold-e48874%_))
                                    (_%new-imports48902%_
                                     (foldl _%fold-e48899%_
                                            '()
                                            _%imports48871%_)))
                               (for-each
                                (lambda (_%id48907%_)
                                  (if (hash-get
                                       _%found48845%_
                                       (gx#core-identifier-key _%id48907%_))
                                      '#!void
                                      (gx#raise-syntax-error
                                       '#f
                                       '"bad syntax; identifier is not in the import set"
                                       _%stx48691%_
                                       _%id48907%_)))
                                (foldr (lambda (_%$%g4890948912%_
                                                _%$%g4891048915%_)
                                         (cons _%$%g4890948912%_
                                               _%$%g4891048915%_))
                                       '()
                                       _%$%id4871548802%_))
                               (cons 'begin: _%new-imports48902%_))
                             (_%$%g4869448727%_ _%$%g4869548731%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop4870848760%_
                                                  _%$%target4870548754%_
                                                  '()
                                                  '()))
                                               (_%$%g4869448727%_
                                                _%$%g4869548731%_)))))
                                     (_%$%g4869448727%_ _%$%g4869548731%_))))
                             (_%$%g4869448727%_ _%$%g4869548731%_))))
                     (_%$%g4869448727%_ _%$%g4869548731%_)))))
         (_%$%g4869348918%_ _%stx48691%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_%stx48923%_)
       (let* ((_%$%g4892648944%_
               (lambda (_%$%g4892748940%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4892748940%_)))
              (_%$%g4892549029%_
               (lambda (_%$%g4892748948%_)
                 (if (gx#stx-pair? _%$%g4892748948%_)
                     (let ((_%$%e4893048951%_ (gx#syntax-e _%$%g4892748948%_)))
                       (let ((_%$%hd4893148955%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4893048951%_)))
                             (_%$%tl4893248958%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4893048951%_))))
                         (if (gx#stx-pair? _%$%tl4893248958%_)
                             (let ((_%$%e4893348961%_
                                    (gx#syntax-e _%$%tl4893248958%_)))
                               (let ((_%$%hd4893448965%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e4893348961%_)))
                                     (_%$%tl4893548968%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e4893348961%_))))
                                 (if (gx#stx-pair? _%$%tl4893548968%_)
                                     (let ((_%$%e4893648971%_
                                            (gx#syntax-e _%$%tl4893548968%_)))
                                       (let ((_%$%hd4893748975%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e4893648971%_)))
                                             (_%$%tl4893848978%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e4893648971%_))))
                                         (if (gx#stx-null? _%$%tl4893848978%_)
                                             (if (gx#identifier?
                                                  _%$%hd4893748975%_)
                                                 (let* ((_%pre48999%_
                                                         (gx#stx-e
                                                          _%$%hd4893748975%_))
                                                        (_%imports49002%_
                                                         (gx#core-expand-import-source
                                                          _%$%hd4893448965%_))
                                                        (_%rename-e49008%_
                                                         (lambda (_%name49005%_)
                                                           (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                            _%name49005%_
                                                            _%pre48999%_)))
                                                        (_%fold-e49024%_
                                                         (letrec ((_%fold-e49011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%in49014%_ _%r49016%_)
                             (if (gx#module-import? _%in49014%_)
                                 (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                        _%in49014%_
                                        (_%rename-e49008%_
                                         (gx#module-import-name _%in49014%_)))
                                       _%r49016%_)
                                 (if (gx#import-set? _%in49014%_)
                                     (foldl _%fold-e49011%_
                                            _%r49016%_
                                            (gx#import-set-imports
                                             _%in49014%_))
                                     (cons _%in49014%_ _%r49016%_))))))
                   _%fold-e49011%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons 'begin:
                                                         (foldl _%fold-e49024%_
                                                                '()
                                                                _%imports49002%_)))
                                                 (_%$%g4892648944%_
                                                  _%$%g4892748948%_))
                                             (_%$%g4892648944%_
                                              _%$%g4892748948%_))))
                                     (_%$%g4892648944%_ _%$%g4892748948%_))))
                             (_%$%g4892648944%_ _%$%g4892748948%_))))
                     (_%$%g4892648944%_ _%$%g4892748948%_)))))
         (_%$%g4892549029%_ _%stx48923%_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_%stx49033%_)
       (letrec ((_%flatten49036%_
                 (lambda (_%list-of-lists49287%_)
                   (foldr (lambda (_%v49290%_ _%acc49292%_)
                            (if (null? _%v49290%_)
                                _%acc49292%_
                                (if (pair? _%v49290%_)
                                    (append (_%flatten49036%_ _%v49290%_)
                                            _%acc49292%_)
                                    (cons _%v49290%_ _%acc49292%_))))
                          '()
                          _%list-of-lists49287%_)))
                (_%expand-path49038%_
                 (lambda (_%top49157%_ _%mod49159%_)
                   (let* ((_%__stx5041550416%_ _%mod49159%_)
                          (_%$%g4916249184%_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%__stx5041550416%_))))
                     (let ((_%__kont5041850419%_
                            (lambda (_%$%g4916449250%_ _%$%g4916549252%_)
                              (map (lambda (_%mod49267%_)
                                     (gx#stx-identifier
                                      _%top49157%_
                                      _%top49157%_
                                      '"/"
                                      _%mod49267%_))
                                   (_%flatten49036%_
                                    (map (lambda (_%$%g4926949271%_)
                                           (_%expand-path49038%_
                                            _%$%g4916549252%_
                                            _%$%g4926949271%_))
                                         (foldr (lambda (_%$%g4927449277%_
                                                         _%$%g4927549280%_)
                                                  (cons _%$%g4927449277%_
                                                        _%$%g4927549280%_))
                                                '()
                                                _%$%g4916449250%_))))))
                           (_%__kont5042250423%_
                            (lambda (_%$%g4917849191%_)
                              (gx#stx-identifier
                               _%top49157%_
                               _%top49157%_
                               '"/"
                               _%$%g4917849191%_))))
                       (let* ((_%$%g4916149205%_
                               (lambda ()
                                 (let ((_%$%g4917849191%_ _%__stx5041550416%_))
                                   (if (or (gx#identifier? _%$%g4917849191%_)
                                           (gx#stx-fixnum? _%$%g4917849191%_))
                                       (_%__kont5042250423%_ _%$%g4917849191%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g4916249184%_))))))
                              (_%__match5043850439%_
                               (lambda (_%$%e4916649212%_
                                        _%$%hd4916749216%_
                                        _%$%tl4916849219%_
                                        _%__splice5042050421%_
                                        _%$%target4916949222%_
                                        _%$%tl4917149225%_)
                                 (letrec ((_%$%loop4917249228%_
                                           (lambda (_%$%hd4917049232%_
                                                    _%$%mod4917649235%_)
                                             (if (gx#stx-pair?
                                                  _%$%hd4917049232%_)
                                                 (let ((_%$%e4917349237%_
                                                        (gx#syntax-e
                                                         _%$%hd4917049232%_)))
                                                   (let ((_%$%lp-tl4917549244%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e4917349237%_)))
                                                         (_%$%lp-hd4917449241%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e4917349237%_))))
                                                     (_%$%loop4917249228%_
                                                      _%$%lp-tl4917549244%_
                                                      (cons _%$%lp-hd4917449241%_
                                                            _%$%mod4917649235%_))))
                                                 (let ((_%$%mod4917749247%_
                                                        (reverse _%$%mod4917649235%_)))
                                                   (_%__kont5041850419%_
                                                    _%$%mod4917749247%_
                                                    _%$%hd4916749216%_))))))
                                   (_%$%loop4917249228%_
                                    _%$%target4916949222%_
                                    '())))))
                         (if (gx#stx-pair? _%__stx5041550416%_)
                             (let ((_%$%e4916649212%_
                                    (gx#syntax-e _%__stx5041550416%_)))
                               (let ((_%$%tl4916849219%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e4916649212%_)))
                                     (_%$%hd4916749216%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e4916649212%_))))
                                 (if (gx#stx-pair/null? _%$%tl4916849219%_)
                                     (let ((_%__splice5042050421%_
                                            (gx#syntax-split-splice->vector
                                             _%$%tl4916849219%_
                                             '0)))
                                       (let ((_%$%tl4917149225%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice5042050421%_
                                                 '1)))
                                             (_%$%target4916949222%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice5042050421%_
                                                 '0))))
                                         (if (gx#stx-null? _%$%tl4917149225%_)
                                             (_%__match5043850439%_
                                              _%$%e4916649212%_
                                              _%$%hd4916749216%_
                                              _%$%tl4916849219%_
                                              _%__splice5042050421%_
                                              _%$%target4916949222%_
                                              _%$%tl4917149225%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%$%g4916149205%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%$%g4916149205%_)))))
                             (let ()
                               (declare (not safe))
                               (_%$%g4916149205%_)))))))))
         (let* ((_%$%g4904049064%_
                 (lambda (_%$%g4904149060%_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%$%g4904149060%_)))
                (_%$%g4903949153%_
                 (lambda (_%$%g4904149068%_)
                   (if (gx#stx-pair? _%$%g4904149068%_)
                       (let ((_%$%e4904449071%_
                              (gx#syntax-e _%$%g4904149068%_)))
                         (let ((_%$%hd4904549075%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4904449071%_)))
                               (_%$%tl4904649078%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4904449071%_))))
                           (if (gx#stx-pair? _%$%tl4904649078%_)
                               (let ((_%$%e4904749081%_
                                      (gx#syntax-e _%$%tl4904649078%_)))
                                 (let ((_%$%hd4904849085%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e4904749081%_)))
                                       (_%$%tl4904949088%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e4904749081%_))))
                                   (if (gx#stx-pair/null? _%$%tl4904949088%_)
                                       (let ((_g50517_
                                              (gx#syntax-split-splice
                                               _%$%tl4904949088%_
                                               '0)))
                                         (begin
                                           (let ((_g50518_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g50517_)
                                                        (##values-length
                                                         _g50517_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g50518_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g50518_)))
                                           (let ((_%$%target4905049091%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g50517_ 0)))
                                                 (_%$%tl4905249094%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g50517_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%$%tl4905249094%_)
                                                 (letrec ((_%$%loop4905349097%_
                                                           (lambda (_%$%hd4905149101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%mod4905749104%_)
                     (if (gx#stx-pair? _%$%hd4905149101%_)
                         (let ((_%$%e4905449106%_
                                (gx#syntax-e _%$%hd4905149101%_)))
                           (let ((_%$%lp-hd4905549110%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e4905449106%_)))
                                 (_%$%lp-tl4905649113%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e4905449106%_))))
                             (_%$%loop4905349097%_
                              _%$%lp-tl4905649113%_
                              (cons _%$%lp-hd4905549110%_
                                    _%$%mod4905749104%_))))
                         (let ((_%$%mod4905849116%_
                                (reverse _%$%mod4905749104%_)))
                           (cons 'begin:
                                 (_%flatten49036%_
                                  (map (lambda (_%$%g4913949141%_)
                                         (_%expand-path49038%_
                                          _%$%hd4904849085%_
                                          _%$%g4913949141%_))
                                       (foldr (lambda (_%$%g4914449147%_
                                                       _%$%g4914549150%_)
                                                (cons _%$%g4914449147%_
                                                      _%$%g4914549150%_))
                                              '()
                                              _%$%mod4905849116%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%loop4905349097%_
                                                    _%$%target4905049091%_
                                                    '()))
                                                 (_%$%g4904049064%_
                                                  _%$%g4904149068%_)))))
                                       (_%$%g4904049064%_ _%$%g4904149068%_))))
                               (_%$%g4904049064%_ _%$%g4904149068%_))))
                       (_%$%g4904049064%_ _%$%g4904149068%_)))))
           (_%$%g4903949153%_ _%stx49033%_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_%stx49302%_)
       (let* ((_%$%g4930549329%_
               (lambda (_%$%g4930649325%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4930649325%_)))
              (_%$%g4930449455%_
               (lambda (_%$%g4930649333%_)
                 (if (gx#stx-pair? _%$%g4930649333%_)
                     (let ((_%$%e4930949336%_ (gx#syntax-e _%$%g4930649333%_)))
                       (let ((_%$%hd4931049340%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4930949336%_)))
                             (_%$%tl4931149343%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4930949336%_))))
                         (if (gx#stx-pair? _%$%tl4931149343%_)
                             (let ((_%$%e4931249346%_
                                    (gx#syntax-e _%$%tl4931149343%_)))
                               (let ((_%$%hd4931349350%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e4931249346%_)))
                                     (_%$%tl4931449353%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e4931249346%_))))
                                 (if (gx#stx-pair/null? _%$%tl4931449353%_)
                                     (let ((_g50519_
                                            (gx#syntax-split-splice
                                             _%$%tl4931449353%_
                                             '0)))
                                       (begin
                                         (let ((_g50520_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50519_)
                                                      (##values-length
                                                       _g50519_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50520_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50520_)))
                                         (let ((_%$%target4931549356%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g50519_ 0)))
                                               (_%$%tl4931749359%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g50519_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl4931749359%_)
                                               (letrec ((_%$%loop4931849362%_
                                                         (lambda (_%$%hd4931649366%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%id4932249369%_)
                   (if (gx#stx-pair? _%$%hd4931649366%_)
                       (let ((_%$%e4931949371%_
                              (gx#syntax-e _%$%hd4931649366%_)))
                         (let ((_%$%lp-hd4932049375%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4931949371%_)))
                               (_%$%lp-tl4932149378%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4931949371%_))))
                           (_%$%loop4931849362%_
                            _%$%lp-tl4932149378%_
                            (cons _%$%lp-hd4932049375%_ _%$%id4932249369%_))))
                       (let ((_%$%id4932349381%_ (reverse _%$%id4932249369%_)))
                         (if (gx#identifier-list?
                              (foldr (lambda (_%$%g4940349406%_
                                              _%$%g4940449409%_)
                                       (cons _%$%g4940349406%_
                                             _%$%g4940449409%_))
                                     '()
                                     _%$%id4932349381%_))
                             (let* ((_%keys49420%_
                                     (gx#stx-map
                                      gx#core-identifier-key
                                      (foldr (lambda (_%$%g4941149414%_
                                                      _%$%g4941249417%_)
                                               (cons _%$%g4941149414%_
                                                     _%$%g4941249417%_))
                                             '()
                                             _%$%id4932349381%_)))
                                    (_%keytab49431%_
                                     (let ((_%ht49423%_ (make-hash-table)))
                                       (for-each
                                        (lambda (_%$%g4942549427%_)
                                          (hash-put!
                                           _%ht49423%_
                                           _%$%g4942549427%_
                                           '#t))
                                        _%keys49420%_)
                                       _%ht49423%_))
                                    (_%exports49434%_
                                     (gx#core-expand-export-source
                                      _%$%hd4931349350%_))
                                    (_%fold-e49450%_
                                     (letrec ((_%fold-e49437%_
                                               (lambda (_%out49440%_
                                                        _%r49442%_)
                                                 (if (gx#module-export?
                                                      _%out49440%_)
                                                     (if (hash-get
                                                          _%keytab49431%_
                                                          (gx#module-export-name
                                                           _%out49440%_))
                                                         _%r49442%_
                                                         (cons _%out49440%_
                                                               _%r49442%_))
                                                     (if (gx#export-set?
                                                          _%out49440%_)
                                                         (foldl _%fold-e49437%_
                                                                _%r49442%_
                                                                (gx#export-set-exports
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out49440%_))
                 _%r49442%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%fold-e49437%_)))
                               (cons 'begin:
                                     (foldl _%fold-e49450%_
                                            '()
                                            _%exports49434%_)))
                             (_%$%g4930549329%_ _%$%g4930649333%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop4931849362%_
                                                  _%$%target4931549356%_
                                                  '()))
                                               (_%$%g4930549329%_
                                                _%$%g4930649333%_)))))
                                     (_%$%g4930549329%_ _%$%g4930649333%_))))
                             (_%$%g4930549329%_ _%$%g4930649333%_))))
                     (_%$%g4930549329%_ _%$%g4930649333%_)))))
         (_%$%g4930449455%_ _%stx49302%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-from-out|
    (gx#make-export-expander
     (lambda (_%stx49460%_)
       (let* ((_%$%g4946349487%_
               (lambda (_%$%g4946449483%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4946449483%_)))
              (_%$%g4946249617%_
               (lambda (_%$%g4946449491%_)
                 (if (gx#stx-pair? _%$%g4946449491%_)
                     (let ((_%$%e4946749494%_ (gx#syntax-e _%$%g4946449491%_)))
                       (let ((_%$%hd4946849498%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4946749494%_)))
                             (_%$%tl4946949501%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4946749494%_))))
                         (if (gx#stx-pair? _%$%tl4946949501%_)
                             (let ((_%$%e4947049504%_
                                    (gx#syntax-e _%$%tl4946949501%_)))
                               (let ((_%$%hd4947149508%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e4947049504%_)))
                                     (_%$%tl4947249511%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e4947049504%_))))
                                 (if (gx#stx-pair/null? _%$%tl4947249511%_)
                                     (let ((_g50521_
                                            (gx#syntax-split-splice
                                             _%$%tl4947249511%_
                                             '0)))
                                       (begin
                                         (let ((_g50522_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50521_)
                                                      (##values-length
                                                       _g50521_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50522_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50522_)))
                                         (let ((_%$%target4947349514%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g50521_ 0)))
                                               (_%$%tl4947549517%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g50521_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl4947549517%_)
                                               (letrec ((_%$%loop4947649520%_
                                                         (lambda (_%$%hd4947449524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%filter-out4948049527%_)
                   (if (gx#stx-pair? _%$%hd4947449524%_)
                       (let ((_%$%e4947749529%_
                              (gx#syntax-e _%$%hd4947449524%_)))
                         (let ((_%$%lp-hd4947849533%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4947749529%_)))
                               (_%$%lp-tl4947949536%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4947749529%_))))
                           (_%$%loop4947649520%_
                            _%$%lp-tl4947949536%_
                            (cons _%$%lp-hd4947849533%_
                                  _%$%filter-out4948049527%_))))
                       (let* ((_%$%filter-out4948149539%_
                               (reverse _%$%filter-out4948049527%_))
                              (_%filtered49562%_ (make-hash-table)))
                         (letrec ((_%fold-out49565%_
                                   (lambda (_%out49607%_ _%r49609%_)
                                     (if (gx#module-export? _%out49607%_)
                                         (cons _%out49607%_ _%r49609%_)
                                         (if (gx#export-set? _%out49607%_)
                                             (foldl _%fold-out49565%_
                                                    _%r49609%_
                                                    (gx#export-set-exports
                                                     _%out49607%_))
                                             _%r49609%_)))))
                           (for-each
                            (lambda (_%src49568%_)
                              (let* ((_%exports49574%_
                                      (if (gx#identifier? _%src49568%_)
                                          (let ((_%mod49571%_
                                                 (gx#syntax-local-value
                                                  _%src49568%_)))
                                            (if (gx#module-context?
                                                 _%mod49571%_)
                                                '#!void
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"not a module context"
                                                 _%src49568%_))
                                            (gx#module-context-export
                                             _%mod49571%_))
                                          (gx#core-expand-export-source
                                           _%src49568%_)))
                                     (_%exports49577%_
                                      (foldl _%fold-out49565%_
                                             '()
                                             _%exports49574%_)))
                                (for-each
                                 (lambda (_%out49582%_)
                                   (hash-put!
                                    _%filtered49562%_
                                    (gx#module-export-name _%out49582%_)
                                    '#t))
                                 _%exports49577%_)))
                            (foldr (lambda (_%$%g4958449587%_
                                            _%$%g4958549590%_)
                                     (cons _%$%g4958449587%_
                                           _%$%g4958549590%_))
                                   '()
                                   _%$%filter-out4948149539%_))
                           (let* ((_%exports49593%_
                                   (gx#core-expand-export-source
                                    _%$%hd4947149508%_))
                                  (_%exports49596%_
                                   (foldl _%fold-out49565%_
                                          '()
                                          _%exports49593%_))
                                  (_%exports49602%_
                                   (filter (lambda (_%out49599%_)
                                             (not (hash-get
                                                   _%filtered49562%_
                                                   (gx#module-export-name
                                                    _%out49599%_))))
                                           _%exports49596%_)))
                             (cons 'begin: _%exports49602%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop4947649520%_
                                                  _%$%target4947349514%_
                                                  '()))
                                               (_%$%g4946349487%_
                                                _%$%g4946449491%_)))))
                                     (_%$%g4946349487%_ _%$%g4946449491%_))))
                             (_%$%g4946349487%_ _%$%g4946449491%_))))
                     (_%$%g4946349487%_ _%$%g4946449491%_)))))
         (_%$%g4946249617%_ _%stx49460%_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_%out49622%_ _%rename49624%_)
      (gx#make-module-export
       (gx#module-export-context _%out49622%_)
       (gx#module-export-key _%out49622%_)
       (gx#module-export-phi _%out49622%_)
       _%rename49624%_
       (gx#module-export-weak? _%out49622%_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_%stx49626%_)
       (let* ((_%$%g4962949662%_
               (lambda (_%$%g4963049658%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4963049658%_)))
              (_%$%g4962849853%_
               (lambda (_%$%g4963049666%_)
                 (if (gx#stx-pair? _%$%g4963049666%_)
                     (let ((_%$%e4963449669%_ (gx#syntax-e _%$%g4963049666%_)))
                       (let ((_%$%hd4963549673%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4963449669%_)))
                             (_%$%tl4963649676%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4963449669%_))))
                         (if (gx#stx-pair? _%$%tl4963649676%_)
                             (let ((_%$%e4963749679%_
                                    (gx#syntax-e _%$%tl4963649676%_)))
                               (let ((_%$%hd4963849683%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e4963749679%_)))
                                     (_%$%tl4963949686%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e4963749679%_))))
                                 (if (gx#stx-pair/null? _%$%tl4963949686%_)
                                     (let ((_g50523_
                                            (gx#syntax-split-splice
                                             _%$%tl4963949686%_
                                             '0)))
                                       (begin
                                         (let ((_g50524_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50523_)
                                                      (##values-length
                                                       _g50523_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50524_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50524_)))
                                         (let ((_%$%target4964049689%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g50523_ 0)))
                                               (_%$%tl4964249692%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g50523_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl4964249692%_)
                                               (letrec ((_%$%loop4964349695%_
                                                         (lambda (_%$%hd4964149699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%new-id4964749702%_
                          _%$%id4964849703%_)
                   (if (gx#stx-pair? _%$%hd4964149699%_)
                       (let ((_%$%e4964449705%_
                              (gx#syntax-e _%$%hd4964149699%_)))
                         (let ((_%$%lp-hd4964549709%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4964449705%_)))
                               (_%$%lp-tl4964649712%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4964449705%_))))
                           (if (gx#stx-pair? _%$%lp-hd4964549709%_)
                               (let ((_%$%e4965149715%_
                                      (gx#syntax-e _%$%lp-hd4964549709%_)))
                                 (let ((_%$%hd4965249719%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e4965149715%_)))
                                       (_%$%tl4965349722%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e4965149715%_))))
                                   (if (gx#stx-pair? _%$%tl4965349722%_)
                                       (let ((_%$%e4965449725%_
                                              (gx#syntax-e
                                               _%$%tl4965349722%_)))
                                         (let ((_%$%hd4965549729%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e4965449725%_)))
                                               (_%$%tl4965649732%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e4965449725%_))))
                                           (if (gx#stx-null?
                                                _%$%tl4965649732%_)
                                               (_%$%loop4964349695%_
                                                _%$%lp-tl4964649712%_
                                                (cons _%$%hd4965549729%_
                                                      _%$%new-id4964749702%_)
                                                (cons _%$%hd4965249719%_
                                                      _%$%id4964849703%_))
                                               (_%$%g4962949662%_
                                                _%$%g4963049666%_))))
                                       (_%$%g4962949662%_ _%$%g4963049666%_))))
                               (_%$%g4962949662%_ _%$%g4963049666%_))))
                       (let ((_%$%new-id4964949735%_
                              (reverse _%$%new-id4964749702%_))
                             (_%$%id4965049737%_ (reverse _%$%id4964849703%_)))
                         (if (and (gx#identifier-list?
                                   (foldr (lambda (_%$%g4976049763%_
                                                   _%$%g4976149766%_)
                                            (cons _%$%g4976049763%_
                                                  _%$%g4976149766%_))
                                          '()
                                          _%$%id4965049737%_))
                                  (gx#identifier-list?
                                   (foldr (lambda (_%$%g4976849771%_
                                                   _%$%g4976949774%_)
                                            (cons _%$%g4976849771%_
                                                  _%$%g4976949774%_))
                                          '()
                                          _%$%new-id4964949735%_)))
                             (let* ((_%keytab49777%_ (make-hash-table))
                                    (_%found49780%_ (make-hash-table))
                                    (_%_49803%_
                                     (for-each
                                      (lambda (_%id49783%_ _%new-id49785%_)
                                        (hash-put!
                                         _%keytab49777%_
                                         (gx#core-identifier-key _%id49783%_)
                                         (gx#core-identifier-key
                                          _%new-id49785%_)))
                                      (foldr (lambda (_%$%g4978649789%_
                                                      _%$%g4978749792%_)
                                               (cons _%$%g4978649789%_
                                                     _%$%g4978749792%_))
                                             '()
                                             _%$%id4965049737%_)
                                      (foldr (lambda (_%$%g4979449797%_
                                                      _%$%g4979549800%_)
                                               (cons _%$%g4979449797%_
                                                     _%$%g4979549800%_))
                                             '()
                                             _%$%new-id4964949735%_)))
                                    (_%exports49806%_
                                     (gx#core-expand-export-source
                                      _%$%hd4963849683%_))
                                    (_%fold-e49834%_
                                     (letrec ((_%fold-e49809%_
                                               (lambda (_%out49812%_
                                                        _%r49814%_)
                                                 (if (gx#module-export?
                                                      _%out49812%_)
                                                     (let* ((_%name49818%_
                                                             (gx#module-export-name
                                                              _%out49812%_))
                                                            (_%$e49821%_
                                                             (hash-get
                                                              _%keytab49777%_
                                                              _%name49818%_)))
                                                       (if _%$e49821%_
                                                           (let ()
                                                             (hash-put!
                                                              _%found49780%_
                                                              _%name49818%_
                                                              '#t)
                                                             (cons (|gerbil/core/module-sugar[1]#module-export-rename|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%out49812%_
                            _%$e49821%_)
                           _%r49814%_))
                   (cons _%out49812%_ _%r49814%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#export-set?
                                                          _%out49812%_)
                                                         (foldl _%fold-e49809%_
                                                                _%r49814%_
                                                                (gx#export-set-exports
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out49812%_))
                 (cons _%out49812%_ _%r49814%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%fold-e49809%_))
                                    (_%new-exports49837%_
                                     (foldl _%fold-e49834%_
                                            '()
                                            _%exports49806%_)))
                               (for-each
                                (lambda (_%id49842%_)
                                  (if (hash-get
                                       _%found49780%_
                                       (gx#core-identifier-key _%id49842%_))
                                      '#!void
                                      (gx#raise-syntax-error
                                       '#f
                                       '"bad syntax; identifier is not in the export set"
                                       _%stx49626%_
                                       _%id49842%_)))
                                (foldr (lambda (_%$%g4984449847%_
                                                _%$%g4984549850%_)
                                         (cons _%$%g4984449847%_
                                               _%$%g4984549850%_))
                                       '()
                                       _%$%id4965049737%_))
                               (cons 'begin: _%new-exports49837%_))
                             (_%$%g4962949662%_ _%$%g4963049666%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop4964349695%_
                                                  _%$%target4964049689%_
                                                  '()
                                                  '()))
                                               (_%$%g4962949662%_
                                                _%$%g4963049666%_)))))
                                     (_%$%g4962949662%_ _%$%g4963049666%_))))
                             (_%$%g4962949662%_ _%$%g4963049666%_))))
                     (_%$%g4962949662%_ _%$%g4963049666%_)))))
         (_%$%g4962849853%_ _%stx49626%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_%stx49858%_)
       (let* ((_%$%g4986149879%_
               (lambda (_%$%g4986249875%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4986249875%_)))
              (_%$%g4986049964%_
               (lambda (_%$%g4986249883%_)
                 (if (gx#stx-pair? _%$%g4986249883%_)
                     (let ((_%$%e4986549886%_ (gx#syntax-e _%$%g4986249883%_)))
                       (let ((_%$%hd4986649890%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4986549886%_)))
                             (_%$%tl4986749893%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4986549886%_))))
                         (if (gx#stx-pair? _%$%tl4986749893%_)
                             (let ((_%$%e4986849896%_
                                    (gx#syntax-e _%$%tl4986749893%_)))
                               (let ((_%$%hd4986949900%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e4986849896%_)))
                                     (_%$%tl4987049903%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e4986849896%_))))
                                 (if (gx#stx-pair? _%$%tl4987049903%_)
                                     (let ((_%$%e4987149906%_
                                            (gx#syntax-e _%$%tl4987049903%_)))
                                       (let ((_%$%hd4987249910%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e4987149906%_)))
                                             (_%$%tl4987349913%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e4987149906%_))))
                                         (if (gx#stx-null? _%$%tl4987349913%_)
                                             (if (gx#identifier?
                                                  _%$%hd4987249910%_)
                                                 (let* ((_%pre49934%_
                                                         (gx#stx-e
                                                          _%$%hd4987249910%_))
                                                        (_%exports49937%_
                                                         (gx#core-expand-export-source
                                                          _%$%hd4986949900%_))
                                                        (_%rename-e49943%_
                                                         (lambda (_%name49940%_)
                                                           (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                            _%name49940%_
                                                            _%pre49934%_)))
                                                        (_%fold-e49959%_
                                                         (letrec ((_%fold-e49946%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%out49949%_ _%r49951%_)
                             (if (gx#module-export? _%out49949%_)
                                 (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                        _%out49949%_
                                        (_%rename-e49943%_
                                         (gx#module-export-name _%out49949%_)))
                                       _%r49951%_)
                                 (if (gx#export-set? _%out49949%_)
                                     (foldl _%fold-e49946%_
                                            _%r49951%_
                                            (gx#export-set-exports
                                             _%out49949%_))
                                     (cons _%out49949%_ _%r49951%_))))))
                   _%fold-e49946%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons 'begin:
                                                         (foldl _%fold-e49959%_
                                                                '()
                                                                _%exports49937%_)))
                                                 (_%$%g4986149879%_
                                                  _%$%g4986249883%_))
                                             (_%$%g4986149879%_
                                              _%$%g4986249883%_))))
                                     (_%$%g4986149879%_ _%$%g4986249883%_))))
                             (_%$%g4986149879%_ _%$%g4986249883%_))))
                     (_%$%g4986149879%_ _%$%g4986249883%_)))))
         (_%$%g4986049964%_ _%stx49858%_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_%stx49968%_)
       (letrec ((_%identifiers49971%_
                 (lambda (_%id50199%_ _%unchecked?50201%_)
                   (let ((_%info50203%_
                          (gx#syntax-local-value _%id50199%_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%info50203%_))
                         (cons _%id50199%_
                               (cons (let ((__obj50500 _%info50203%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj50500
                                              'gerbil/core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj50500
                                              '4
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj50500
                                            'type-descriptor)))
                                     (foldr cons
                                            (cons (let ((__obj50501
                                                         _%info50203%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj50501
                                                           'gerbil/core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj50501
                                                           '15
                                                           '#f
                                                           '#f))
                                                        (unchecked-slot-ref
                                                         __obj50501
                                                         'predicate)))
                                                  (foldr cons
                                                         (foldr cons
                                                                (if _%unchecked?50201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons
                                   (map cdr
                                        (let ((__obj50502 _%info50203%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj50502
                                                 'gerbil/core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj50502
                                                 '19
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj50502
                                               'unchecked-mutators))))
                                   (map cdr
                                        (let ((__obj50503 _%info50203%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj50503
                                                 'gerbil/core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj50503
                                                 '18
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj50503
                                               'unchecked-accessors)))))
                            '())
                        (map cdr
                             (let ((__obj50504 _%info50203%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj50504
                                      'gerbil/core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj50504
                                      '17
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj50504
                                    'mutators)))))
                 (map cdr
                      (let ((__obj50505 _%info50203%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj50505
                               'gerbil/core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj50505
                               '16
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj50505 'accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_%ctor50206%_
                                                   (let ((__obj50506
                                                          _%info50203%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj50506
                                                            'gerbil/core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj50506
                                                            '14
                                                            '#f
                                                            '#f))
                                                         (unchecked-slot-ref
                                                          __obj50506
                                                          'constructor)))))
                                              (if _%ctor50206%_
                                                  (cons _%ctor50206%_ '())
                                                  '())))))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _%stx49968%_
                          _%id50199%_))))))
         (let* ((_%__stx5044150442%_ _%stx49968%_)
                (_%$%g4997550016%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%__stx5044150442%_))))
           (let ((_%__kont5044450445%_
                  (lambda (_%$%g4997750160%_ _%$%g4997850162%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%$%g5018150183%_)
                              (_%identifiers49971%_
                               _%$%g5018150183%_
                               (gx#stx-e _%$%g4997850162%_)))
                            (foldr (lambda (_%$%g5018650189%_
                                            _%$%g5018750192%_)
                                     (cons _%$%g5018650189%_
                                           _%$%g5018750192%_))
                                   '()
                                   _%$%g4997750160%_))))))
                 (_%__kont5044850449%_
                  (lambda (_%$%g4999850061%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%$%g5007750079%_)
                              (_%identifiers49971%_ _%$%g5007750079%_ '#f))
                            (foldr (lambda (_%$%g5008250085%_
                                            _%$%g5008350088%_)
                                     (cons _%$%g5008250085%_
                                           _%$%g5008350088%_))
                                   '()
                                   _%$%g4999850061%_)))))))
             (let* ((_%__match5049850499%_
                     (lambda (_%$%e4999950023%_
                              _%$%hd5000050027%_
                              _%$%tl5000150030%_
                              _%__splice5045050451%_
                              _%$%target5000250033%_
                              _%$%tl5000450036%_)
                       (letrec ((_%$%loop5000550039%_
                                 (lambda (_%$%hd5000350043%_
                                          _%$%id5000950046%_)
                                   (if (gx#stx-pair? _%$%hd5000350043%_)
                                       (let ((_%$%e5000650048%_
                                              (gx#syntax-e
                                               _%$%hd5000350043%_)))
                                         (let ((_%$%lp-tl5000850055%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e5000650048%_)))
                                               (_%$%lp-hd5000750052%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e5000650048%_))))
                                           (_%$%loop5000550039%_
                                            _%$%lp-tl5000850055%_
                                            (cons _%$%lp-hd5000750052%_
                                                  _%$%id5000950046%_))))
                                       (let ((_%$%id5001050058%_
                                              (reverse _%$%id5000950046%_)))
                                         (_%__kont5044850449%_
                                          _%$%id5001050058%_))))))
                         (_%$%loop5000550039%_ _%$%target5000250033%_ '()))))
                    (_%__match5048450485%_
                     (lambda (_%$%e4997950098%_
                              _%$%hd4998050102%_
                              _%$%tl4998150105%_
                              _%$%e4998250108%_
                              _%$%hd4998350112%_
                              _%$%tl4998450115%_
                              _%$%e4998550118%_
                              _%$%e4998650122%_
                              _%$%hd4998750126%_
                              _%$%tl4998850129%_
                              _%__splice5044650447%_
                              _%$%target4998950132%_
                              _%$%tl4999150135%_)
                       (letrec ((_%$%loop4999250138%_
                                 (lambda (_%$%hd4999050142%_
                                          _%$%id4999650145%_)
                                   (if (gx#stx-pair? _%$%hd4999050142%_)
                                       (let ((_%$%e4999350147%_
                                              (gx#syntax-e
                                               _%$%hd4999050142%_)))
                                         (let ((_%$%lp-tl4999550154%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e4999350147%_)))
                                               (_%$%lp-hd4999450151%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e4999350147%_))))
                                           (_%$%loop4999250138%_
                                            _%$%lp-tl4999550154%_
                                            (cons _%$%lp-hd4999450151%_
                                                  _%$%id4999650145%_))))
                                       (let ((_%$%id4999750157%_
                                              (reverse _%$%id4999650145%_)))
                                         (_%__kont5044450445%_
                                          _%$%id4999750157%_
                                          _%$%hd4998750126%_))))))
                         (_%$%loop4999250138%_ _%$%target4998950132%_ '())))))
               (if (gx#stx-pair? _%__stx5044150442%_)
                   (let ((_%$%e4997950098%_ (gx#syntax-e _%__stx5044150442%_)))
                     (let ((_%$%tl4998150105%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e4997950098%_)))
                           (_%$%hd4998050102%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e4997950098%_))))
                       (if (gx#stx-pair? _%$%tl4998150105%_)
                           (let ((_%$%e4998250108%_
                                  (gx#syntax-e _%$%tl4998150105%_)))
                             (let ((_%$%tl4998450115%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e4998250108%_)))
                                   (_%$%hd4998350112%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e4998250108%_))))
                               (if (gx#stx-datum? _%$%hd4998350112%_)
                                   (let ((_%$%e4998550118%_
                                          (gx#stx-e _%$%hd4998350112%_)))
                                     (if (equal? _%$%e4998550118%_ 'unchecked:)
                                         (if (gx#stx-pair? _%$%tl4998450115%_)
                                             (let ((_%$%e4998650122%_
                                                    (gx#syntax-e
                                                     _%$%tl4998450115%_)))
                                               (let ((_%$%tl4998850129%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e4998650122%_)))
                                                     (_%$%hd4998750126%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e4998650122%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%$%tl4998850129%_)
                                                     (let ((_%__splice5044650447%_
                                                            (gx#syntax-split-splice->vector
                                                             _%$%tl4998850129%_
                                                             '0)))
                                                       (let ((_%$%tl4999150135%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice5044650447%_ '1)))
                     (_%$%target4998950132%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice5044650447%_ '0))))
                 (if (gx#stx-null? _%$%tl4999150135%_)
                     (_%__match5048450485%_
                      _%$%e4997950098%_
                      _%$%hd4998050102%_
                      _%$%tl4998150105%_
                      _%$%e4998250108%_
                      _%$%hd4998350112%_
                      _%$%tl4998450115%_
                      _%$%e4998550118%_
                      _%$%e4998650122%_
                      _%$%hd4998750126%_
                      _%$%tl4998850129%_
                      _%__splice5044650447%_
                      _%$%target4998950132%_
                      _%$%tl4999150135%_)
                     (if (gx#stx-pair/null? _%$%tl4998150105%_)
                         (let ((_%__splice5045050451%_
                                (gx#syntax-split-splice->vector
                                 _%$%tl4998150105%_
                                 '0)))
                           (let ((_%$%tl5000450036%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice5045050451%_ '1)))
                                 (_%$%target5000250033%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice5045050451%_ '0))))
                             (if (gx#stx-null? _%$%tl5000450036%_)
                                 (_%__match5049850499%_
                                  _%$%e4997950098%_
                                  _%$%hd4998050102%_
                                  _%$%tl4998150105%_
                                  _%__splice5045050451%_
                                  _%$%target5000250033%_
                                  _%$%tl5000450036%_)
                                 (let ()
                                   (declare (not safe))
                                   (_%$%g4997550016%_)))))
                         (let () (declare (not safe)) (_%$%g4997550016%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _%$%tl4998150105%_)
                                                         (let ((_%__splice5045050451%_
                                                                (gx#syntax-split-splice->vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl4998150105%_
                         '0)))
                   (let ((_%$%tl5000450036%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice5045050451%_ '1)))
                         (_%$%target5000250033%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice5045050451%_ '0))))
                     (if (gx#stx-null? _%$%tl5000450036%_)
                         (_%__match5049850499%_
                          _%$%e4997950098%_
                          _%$%hd4998050102%_
                          _%$%tl4998150105%_
                          _%__splice5045050451%_
                          _%$%target5000250033%_
                          _%$%tl5000450036%_)
                         (let () (declare (not safe)) (_%$%g4997550016%_)))))
                 (let () (declare (not safe)) (_%$%g4997550016%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _%$%tl4998150105%_)
                                                 (let ((_%__splice5045050451%_
                                                        (gx#syntax-split-splice->vector
                                                         _%$%tl4998150105%_
                                                         '0)))
                                                   (let ((_%$%tl5000450036%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice5045050451%_
                                                             '1)))
                                                         (_%$%target5000250033%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice5045050451%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%$%tl5000450036%_)
                                                         (_%__match5049850499%_
                                                          _%$%e4997950098%_
                                                          _%$%hd4998050102%_
                                                          _%$%tl4998150105%_
                                                          _%__splice5045050451%_
                                                          _%$%target5000250033%_
                                                          _%$%tl5000450036%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%$%g4997550016%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%$%g4997550016%_))))
                                         (if (gx#stx-pair/null?
                                              _%$%tl4998150105%_)
                                             (let ((_%__splice5045050451%_
                                                    (gx#syntax-split-splice->vector
                                                     _%$%tl4998150105%_
                                                     '0)))
                                               (let ((_%$%tl5000450036%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice5045050451%_
                                                         '1)))
                                                     (_%$%target5000250033%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice5045050451%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%$%tl5000450036%_)
                                                     (_%__match5049850499%_
                                                      _%$%e4997950098%_
                                                      _%$%hd4998050102%_
                                                      _%$%tl4998150105%_
                                                      _%__splice5045050451%_
                                                      _%$%target5000250033%_
                                                      _%$%tl5000450036%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g4997550016%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%$%g4997550016%_)))))
                                   (if (gx#stx-pair/null? _%$%tl4998150105%_)
                                       (let ((_%__splice5045050451%_
                                              (gx#syntax-split-splice->vector
                                               _%$%tl4998150105%_
                                               '0)))
                                         (let ((_%$%tl5000450036%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice5045050451%_
                                                   '1)))
                                               (_%$%target5000250033%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice5045050451%_
                                                   '0))))
                                           (if (gx#stx-null?
                                                _%$%tl5000450036%_)
                                               (_%__match5049850499%_
                                                _%$%e4997950098%_
                                                _%$%hd4998050102%_
                                                _%$%tl4998150105%_
                                                _%__splice5045050451%_
                                                _%$%target5000250033%_
                                                _%$%tl5000450036%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g4997550016%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g4997550016%_))))))
                           (if (gx#stx-pair/null? _%$%tl4998150105%_)
                               (let ((_%__splice5045050451%_
                                      (gx#syntax-split-splice->vector
                                       _%$%tl4998150105%_
                                       '0)))
                                 (let ((_%$%tl5000450036%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice5045050451%_
                                           '1)))
                                       (_%$%target5000250033%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice5045050451%_
                                           '0))))
                                   (if (gx#stx-null? _%$%tl5000450036%_)
                                       (_%__match5049850499%_
                                        _%$%e4997950098%_
                                        _%$%hd4998050102%_
                                        _%$%tl4998150105%_
                                        _%__splice5045050451%_
                                        _%$%target5000250033%_
                                        _%$%tl5000450036%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g4997550016%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g4997550016%_))))))
                   (let () (declare (not safe)) (_%$%g4997550016%_)))))))))))
