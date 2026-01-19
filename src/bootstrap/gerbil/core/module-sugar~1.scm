(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_%$stx45264%_)
      (let* ((_%__stx4791847919%_ _%$stx45264%_)
             (_%g4526945288%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4791847919%_))))
        (let ((_%__kont4792147922%_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (_%__kont4792347924%_
               (lambda (_%L45315%_ _%L45317%_ _%L45318%_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _%L45317%_
                                   (cons (cons _%L45318%_ _%L45315%_) '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _%L45317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? _%__stx4791847919%_)
              (let ((_%e4527145340%_ (gx#syntax-e _%__stx4791847919%_)))
                (let ((_%tl4527345347%_
                       (let () (declare (not safe)) (##cdr _%e4527145340%_)))
                      (_%hd4527245344%_
                       (let () (declare (not safe)) (##car _%e4527145340%_))))
                  (if (gx#stx-null? _%tl4527345347%_)
                      (_%__kont4792147922%_)
                      (if (gx#stx-pair? _%tl4527345347%_)
                          (let ((_%e4528045305%_
                                 (gx#syntax-e _%tl4527345347%_)))
                            (let ((_%tl4528245312%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4528045305%_)))
                                  (_%hd4528145309%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4528045305%_))))
                              (_%__kont4792347924%_
                               _%tl4528245312%_
                               _%hd4528145309%_
                               _%hd4527245344%_)))
                          (let () (declare (not safe)) (_%g4526945288%_))))))
              (let () (declare (not safe)) (_%g4526945288%_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_%$stx45358%_)
      (let* ((_%__stx4794847949%_ _%$stx45358%_)
             (_%g4536345403%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4794847949%_))))
        (let ((_%__kont4795147952%_
               (lambda (_%L45541%_ _%L45543%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L45543%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _%L45541%_ '()))
                                   '())))))
              (_%__kont4795347954%_
               (lambda (_%L45470%_ _%L45472%_ _%L45473%_ _%L45474%_)
                 (cons _%L45474%_
                       (cons _%L45473%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L45472%_
                                               (foldr (lambda (_%g4549545498%_
                                                               _%g4549645501%_)
                                                        (cons _%g4549545498%_
                                                              _%g4549645501%_))
                                                      '()
                                                      _%L45470%_)))
                                   '()))))))
          (let* ((_%__match4800348004%_
                  (lambda (_%e4538045410%_
                           _%hd4538145414%_
                           _%tl4538245417%_
                           _%e4538345420%_
                           _%hd4538445424%_
                           _%tl4538545427%_
                           _%e4538645430%_
                           _%hd4538745434%_
                           _%tl4538845437%_
                           _%__splice4795547956%_
                           _%target4538945440%_
                           _%tl4539145443%_)
                    (letrec ((_%loop4539245446%_
                              (lambda (_%hd4539045450%_ _%body4539645453%_)
                                (if (gx#stx-pair? _%hd4539045450%_)
                                    (let ((_%e4539345456%_
                                           (gx#syntax-e _%hd4539045450%_)))
                                      (let ((_%lp-tl4539545463%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4539345456%_)))
                                            (_%lp-hd4539445460%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4539345456%_))))
                                        (_%loop4539245446%_
                                         _%lp-tl4539545463%_
                                         (cons _%lp-hd4539445460%_
                                               _%body4539645453%_))))
                                    (let ((_%body4539745466%_
                                           (reverse _%body4539645453%_)))
                                      (let ((_%L45470%_ _%body4539745466%_)
                                            (_%L45472%_ _%tl4538845437%_)
                                            (_%L45473%_ _%hd4538745434%_)
                                            (_%L45474%_ _%hd4538145414%_))
                                        (if (gx#identifier? _%L45473%_)
                                            (_%__kont4795347954%_
                                             _%L45470%_
                                             _%L45472%_
                                             _%L45473%_
                                             _%L45474%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4536345403%_)))))))))
                      (_%loop4539245446%_ _%target4538945440%_ '()))))
                 (_%__match4797747978%_
                  (lambda (_%e4536745511%_
                           _%hd4536845515%_
                           _%tl4536945518%_
                           _%e4537045521%_
                           _%hd4537145525%_
                           _%tl4537245528%_
                           _%e4537345531%_
                           _%hd4537445535%_
                           _%tl4537545538%_)
                    (let ((_%L45541%_ _%hd4537445535%_)
                          (_%L45543%_ _%hd4537145525%_))
                      (if (gx#identifier? _%L45543%_)
                          (_%__kont4795147952%_ _%L45541%_ _%L45543%_)
                          (if (gx#stx-pair? _%hd4537145525%_)
                              (let ((_%e4538645430%_
                                     (gx#syntax-e _%hd4537145525%_)))
                                (let ((_%tl4538845437%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4538645430%_)))
                                      (_%hd4538745434%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4538645430%_))))
                                  (if (gx#stx-pair/null? _%tl4537245528%_)
                                      (let ((_%__splice4795547956%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4537245528%_
                                              '0)))
                                        (let ((_%tl4539145443%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4795547956%_
                                                  '1)))
                                              (_%target4538945440%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4795547956%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4539145443%_)
                                              (_%__match4800348004%_
                                               _%e4536745511%_
                                               _%hd4536845515%_
                                               _%tl4536945518%_
                                               _%e4537045521%_
                                               _%hd4537145525%_
                                               _%tl4537245528%_
                                               _%e4538645430%_
                                               _%hd4538745434%_
                                               _%tl4538845437%_
                                               _%__splice4795547956%_
                                               _%target4538945440%_
                                               _%tl4539145443%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4536345403%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4536345403%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4536345403%_))))))))
            (if (gx#stx-pair? _%__stx4794847949%_)
                (let ((_%e4536745511%_ (gx#syntax-e _%__stx4794847949%_)))
                  (let ((_%tl4536945518%_
                         (let () (declare (not safe)) (##cdr _%e4536745511%_)))
                        (_%hd4536845515%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4536745511%_))))
                    (if (gx#stx-pair? _%tl4536945518%_)
                        (let ((_%e4537045521%_ (gx#syntax-e _%tl4536945518%_)))
                          (let ((_%tl4537245528%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4537045521%_)))
                                (_%hd4537145525%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4537045521%_))))
                            (if (gx#stx-pair? _%tl4537245528%_)
                                (let ((_%e4537345531%_
                                       (gx#syntax-e _%tl4537245528%_)))
                                  (let ((_%tl4537545538%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4537345531%_)))
                                        (_%hd4537445535%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4537345531%_))))
                                    (if (gx#stx-null? _%tl4537545538%_)
                                        (_%__match4797747978%_
                                         _%e4536745511%_
                                         _%hd4536845515%_
                                         _%tl4536945518%_
                                         _%e4537045521%_
                                         _%hd4537145525%_
                                         _%tl4537245528%_
                                         _%e4537345531%_
                                         _%hd4537445535%_
                                         _%tl4537545538%_)
                                        (if (gx#stx-pair? _%hd4537145525%_)
                                            (let ((_%e4538645430%_
                                                   (gx#syntax-e
                                                    _%hd4537145525%_)))
                                              (let ((_%tl4538845437%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4538645430%_)))
                                                    (_%hd4538745434%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4538645430%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4537245528%_)
                                                    (let ((_%__splice4795547956%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4537245528%_
                                                            '0)))
                                                      (let ((_%tl4539145443%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4795547956%_ '1)))
                    (_%target4538945440%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4795547956%_ '0))))
                (if (gx#stx-null? _%tl4539145443%_)
                    (_%__match4800348004%_
                     _%e4536745511%_
                     _%hd4536845515%_
                     _%tl4536945518%_
                     _%e4537045521%_
                     _%hd4537145525%_
                     _%tl4537245528%_
                     _%e4538645430%_
                     _%hd4538745434%_
                     _%tl4538845437%_
                     _%__splice4795547956%_
                     _%target4538945440%_
                     _%tl4539145443%_)
                    (let () (declare (not safe)) (_%g4536345403%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4536345403%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4536345403%_))))))
                                (if (gx#stx-pair? _%hd4537145525%_)
                                    (let ((_%e4538645430%_
                                           (gx#syntax-e _%hd4537145525%_)))
                                      (let ((_%tl4538845437%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4538645430%_)))
                                            (_%hd4538745434%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4538645430%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4537245528%_)
                                            (let ((_%__splice4795547956%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4537245528%_
                                                    '0)))
                                              (let ((_%tl4539145443%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4795547956%_
                                                        '1)))
                                                    (_%target4538945440%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4795547956%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4539145443%_)
                                                    (_%__match4800348004%_
                                                     _%e4536745511%_
                                                     _%hd4536845515%_
                                                     _%tl4536945518%_
                                                     _%e4537045521%_
                                                     _%hd4537145525%_
                                                     _%tl4537245528%_
                                                     _%e4538645430%_
                                                     _%hd4538745434%_
                                                     _%tl4538845437%_
                                                     _%__splice4795547956%_
                                                     _%target4538945440%_
                                                     _%tl4539145443%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4536345403%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4536345403%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4536345403%_))))))
                        (let () (declare (not safe)) (_%g4536345403%_)))))
                (let () (declare (not safe)) (_%g4536345403%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_%$stx45563%_)
      (let* ((_%__stx4800648007%_ _%$stx45563%_)
             (_%g4556845608%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4800648007%_))))
        (let ((_%__kont4800948010%_
               (lambda (_%L45746%_ _%L45748%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L45748%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _%L45746%_ '()))
                                   '())))))
              (_%__kont4801148012%_
               (lambda (_%L45675%_ _%L45677%_ _%L45678%_ _%L45679%_)
                 (cons _%L45679%_
                       (cons _%L45678%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L45677%_
                                               (foldr (lambda (_%g4570045703%_
                                                               _%g4570145706%_)
                                                        (cons _%g4570045703%_
                                                              _%g4570145706%_))
                                                      '()
                                                      _%L45675%_)))
                                   '()))))))
          (let* ((_%__match4806148062%_
                  (lambda (_%e4558545615%_
                           _%hd4558645619%_
                           _%tl4558745622%_
                           _%e4558845625%_
                           _%hd4558945629%_
                           _%tl4559045632%_
                           _%e4559145635%_
                           _%hd4559245639%_
                           _%tl4559345642%_
                           _%__splice4801348014%_
                           _%target4559445645%_
                           _%tl4559645648%_)
                    (letrec ((_%loop4559745651%_
                              (lambda (_%hd4559545655%_ _%body4560145658%_)
                                (if (gx#stx-pair? _%hd4559545655%_)
                                    (let ((_%e4559845661%_
                                           (gx#syntax-e _%hd4559545655%_)))
                                      (let ((_%lp-tl4560045668%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4559845661%_)))
                                            (_%lp-hd4559945665%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4559845661%_))))
                                        (_%loop4559745651%_
                                         _%lp-tl4560045668%_
                                         (cons _%lp-hd4559945665%_
                                               _%body4560145658%_))))
                                    (let ((_%body4560245671%_
                                           (reverse _%body4560145658%_)))
                                      (let ((_%L45675%_ _%body4560245671%_)
                                            (_%L45677%_ _%tl4559345642%_)
                                            (_%L45678%_ _%hd4559245639%_)
                                            (_%L45679%_ _%hd4558645619%_))
                                        (if (gx#identifier? _%L45678%_)
                                            (_%__kont4801148012%_
                                             _%L45675%_
                                             _%L45677%_
                                             _%L45678%_
                                             _%L45679%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4556845608%_)))))))))
                      (_%loop4559745651%_ _%target4559445645%_ '()))))
                 (_%__match4803548036%_
                  (lambda (_%e4557245716%_
                           _%hd4557345720%_
                           _%tl4557445723%_
                           _%e4557545726%_
                           _%hd4557645730%_
                           _%tl4557745733%_
                           _%e4557845736%_
                           _%hd4557945740%_
                           _%tl4558045743%_)
                    (let ((_%L45746%_ _%hd4557945740%_)
                          (_%L45748%_ _%hd4557645730%_))
                      (if (gx#identifier? _%L45748%_)
                          (_%__kont4800948010%_ _%L45746%_ _%L45748%_)
                          (if (gx#stx-pair? _%hd4557645730%_)
                              (let ((_%e4559145635%_
                                     (gx#syntax-e _%hd4557645730%_)))
                                (let ((_%tl4559345642%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4559145635%_)))
                                      (_%hd4559245639%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4559145635%_))))
                                  (if (gx#stx-pair/null? _%tl4557745733%_)
                                      (let ((_%__splice4801348014%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4557745733%_
                                              '0)))
                                        (let ((_%tl4559645648%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4801348014%_
                                                  '1)))
                                              (_%target4559445645%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4801348014%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4559645648%_)
                                              (_%__match4806148062%_
                                               _%e4557245716%_
                                               _%hd4557345720%_
                                               _%tl4557445723%_
                                               _%e4557545726%_
                                               _%hd4557645730%_
                                               _%tl4557745733%_
                                               _%e4559145635%_
                                               _%hd4559245639%_
                                               _%tl4559345642%_
                                               _%__splice4801348014%_
                                               _%target4559445645%_
                                               _%tl4559645648%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4556845608%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4556845608%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4556845608%_))))))))
            (if (gx#stx-pair? _%__stx4800648007%_)
                (let ((_%e4557245716%_ (gx#syntax-e _%__stx4800648007%_)))
                  (let ((_%tl4557445723%_
                         (let () (declare (not safe)) (##cdr _%e4557245716%_)))
                        (_%hd4557345720%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4557245716%_))))
                    (if (gx#stx-pair? _%tl4557445723%_)
                        (let ((_%e4557545726%_ (gx#syntax-e _%tl4557445723%_)))
                          (let ((_%tl4557745733%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4557545726%_)))
                                (_%hd4557645730%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4557545726%_))))
                            (if (gx#stx-pair? _%tl4557745733%_)
                                (let ((_%e4557845736%_
                                       (gx#syntax-e _%tl4557745733%_)))
                                  (let ((_%tl4558045743%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4557845736%_)))
                                        (_%hd4557945740%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4557845736%_))))
                                    (if (gx#stx-null? _%tl4558045743%_)
                                        (_%__match4803548036%_
                                         _%e4557245716%_
                                         _%hd4557345720%_
                                         _%tl4557445723%_
                                         _%e4557545726%_
                                         _%hd4557645730%_
                                         _%tl4557745733%_
                                         _%e4557845736%_
                                         _%hd4557945740%_
                                         _%tl4558045743%_)
                                        (if (gx#stx-pair? _%hd4557645730%_)
                                            (let ((_%e4559145635%_
                                                   (gx#syntax-e
                                                    _%hd4557645730%_)))
                                              (let ((_%tl4559345642%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4559145635%_)))
                                                    (_%hd4559245639%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4559145635%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4557745733%_)
                                                    (let ((_%__splice4801348014%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4557745733%_
                                                            '0)))
                                                      (let ((_%tl4559645648%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4801348014%_ '1)))
                    (_%target4559445645%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4801348014%_ '0))))
                (if (gx#stx-null? _%tl4559645648%_)
                    (_%__match4806148062%_
                     _%e4557245716%_
                     _%hd4557345720%_
                     _%tl4557445723%_
                     _%e4557545726%_
                     _%hd4557645730%_
                     _%tl4557745733%_
                     _%e4559145635%_
                     _%hd4559245639%_
                     _%tl4559345642%_
                     _%__splice4801348014%_
                     _%target4559445645%_
                     _%tl4559645648%_)
                    (let () (declare (not safe)) (_%g4556845608%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4556845608%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4556845608%_))))))
                                (if (gx#stx-pair? _%hd4557645730%_)
                                    (let ((_%e4559145635%_
                                           (gx#syntax-e _%hd4557645730%_)))
                                      (let ((_%tl4559345642%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4559145635%_)))
                                            (_%hd4559245639%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4559145635%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4557745733%_)
                                            (let ((_%__splice4801348014%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4557745733%_
                                                    '0)))
                                              (let ((_%tl4559645648%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4801348014%_
                                                        '1)))
                                                    (_%target4559445645%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4801348014%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4559645648%_)
                                                    (_%__match4806148062%_
                                                     _%e4557245716%_
                                                     _%hd4557345720%_
                                                     _%tl4557445723%_
                                                     _%e4557545726%_
                                                     _%hd4557645730%_
                                                     _%tl4557745733%_
                                                     _%e4559145635%_
                                                     _%hd4559245639%_
                                                     _%tl4559345642%_
                                                     _%__splice4801348014%_
                                                     _%target4559445645%_
                                                     _%tl4559645648%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4556845608%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4556845608%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4556845608%_))))))
                        (let () (declare (not safe)) (_%g4556845608%_)))))
                (let () (declare (not safe)) (_%g4556845608%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_%$stx45768%_)
      (let* ((_%__stx4806448065%_ _%$stx45768%_)
             (_%g4577345813%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4806448065%_))))
        (let ((_%__kont4806748068%_
               (lambda (_%L45951%_ _%L45953%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L45953%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _%L45951%_ '()))
                                   '())))))
              (_%__kont4806948070%_
               (lambda (_%L45880%_ _%L45882%_ _%L45883%_ _%L45884%_)
                 (cons _%L45884%_
                       (cons _%L45883%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L45882%_
                                               (foldr (lambda (_%g4590545908%_
                                                               _%g4590645911%_)
                                                        (cons _%g4590545908%_
                                                              _%g4590645911%_))
                                                      '()
                                                      _%L45880%_)))
                                   '()))))))
          (let* ((_%__match4811948120%_
                  (lambda (_%e4579045820%_
                           _%hd4579145824%_
                           _%tl4579245827%_
                           _%e4579345830%_
                           _%hd4579445834%_
                           _%tl4579545837%_
                           _%e4579645840%_
                           _%hd4579745844%_
                           _%tl4579845847%_
                           _%__splice4807148072%_
                           _%target4579945850%_
                           _%tl4580145853%_)
                    (letrec ((_%loop4580245856%_
                              (lambda (_%hd4580045860%_ _%body4580645863%_)
                                (if (gx#stx-pair? _%hd4580045860%_)
                                    (let ((_%e4580345866%_
                                           (gx#syntax-e _%hd4580045860%_)))
                                      (let ((_%lp-tl4580545873%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4580345866%_)))
                                            (_%lp-hd4580445870%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4580345866%_))))
                                        (_%loop4580245856%_
                                         _%lp-tl4580545873%_
                                         (cons _%lp-hd4580445870%_
                                               _%body4580645863%_))))
                                    (let ((_%body4580745876%_
                                           (reverse _%body4580645863%_)))
                                      (let ((_%L45880%_ _%body4580745876%_)
                                            (_%L45882%_ _%tl4579845847%_)
                                            (_%L45883%_ _%hd4579745844%_)
                                            (_%L45884%_ _%hd4579145824%_))
                                        (if (gx#identifier? _%L45883%_)
                                            (_%__kont4806948070%_
                                             _%L45880%_
                                             _%L45882%_
                                             _%L45883%_
                                             _%L45884%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4577345813%_)))))))))
                      (_%loop4580245856%_ _%target4579945850%_ '()))))
                 (_%__match4809348094%_
                  (lambda (_%e4577745921%_
                           _%hd4577845925%_
                           _%tl4577945928%_
                           _%e4578045931%_
                           _%hd4578145935%_
                           _%tl4578245938%_
                           _%e4578345941%_
                           _%hd4578445945%_
                           _%tl4578545948%_)
                    (let ((_%L45951%_ _%hd4578445945%_)
                          (_%L45953%_ _%hd4578145935%_))
                      (if (gx#identifier? _%L45953%_)
                          (_%__kont4806748068%_ _%L45951%_ _%L45953%_)
                          (if (gx#stx-pair? _%hd4578145935%_)
                              (let ((_%e4579645840%_
                                     (gx#syntax-e _%hd4578145935%_)))
                                (let ((_%tl4579845847%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4579645840%_)))
                                      (_%hd4579745844%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4579645840%_))))
                                  (if (gx#stx-pair/null? _%tl4578245938%_)
                                      (let ((_%__splice4807148072%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4578245938%_
                                              '0)))
                                        (let ((_%tl4580145853%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4807148072%_
                                                  '1)))
                                              (_%target4579945850%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4807148072%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4580145853%_)
                                              (_%__match4811948120%_
                                               _%e4577745921%_
                                               _%hd4577845925%_
                                               _%tl4577945928%_
                                               _%e4578045931%_
                                               _%hd4578145935%_
                                               _%tl4578245938%_
                                               _%e4579645840%_
                                               _%hd4579745844%_
                                               _%tl4579845847%_
                                               _%__splice4807148072%_
                                               _%target4579945850%_
                                               _%tl4580145853%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4577345813%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4577345813%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4577345813%_))))))))
            (if (gx#stx-pair? _%__stx4806448065%_)
                (let ((_%e4577745921%_ (gx#syntax-e _%__stx4806448065%_)))
                  (let ((_%tl4577945928%_
                         (let () (declare (not safe)) (##cdr _%e4577745921%_)))
                        (_%hd4577845925%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4577745921%_))))
                    (if (gx#stx-pair? _%tl4577945928%_)
                        (let ((_%e4578045931%_ (gx#syntax-e _%tl4577945928%_)))
                          (let ((_%tl4578245938%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4578045931%_)))
                                (_%hd4578145935%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4578045931%_))))
                            (if (gx#stx-pair? _%tl4578245938%_)
                                (let ((_%e4578345941%_
                                       (gx#syntax-e _%tl4578245938%_)))
                                  (let ((_%tl4578545948%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4578345941%_)))
                                        (_%hd4578445945%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4578345941%_))))
                                    (if (gx#stx-null? _%tl4578545948%_)
                                        (_%__match4809348094%_
                                         _%e4577745921%_
                                         _%hd4577845925%_
                                         _%tl4577945928%_
                                         _%e4578045931%_
                                         _%hd4578145935%_
                                         _%tl4578245938%_
                                         _%e4578345941%_
                                         _%hd4578445945%_
                                         _%tl4578545948%_)
                                        (if (gx#stx-pair? _%hd4578145935%_)
                                            (let ((_%e4579645840%_
                                                   (gx#syntax-e
                                                    _%hd4578145935%_)))
                                              (let ((_%tl4579845847%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4579645840%_)))
                                                    (_%hd4579745844%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4579645840%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4578245938%_)
                                                    (let ((_%__splice4807148072%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4578245938%_
                                                            '0)))
                                                      (let ((_%tl4580145853%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4807148072%_ '1)))
                    (_%target4579945850%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4807148072%_ '0))))
                (if (gx#stx-null? _%tl4580145853%_)
                    (_%__match4811948120%_
                     _%e4577745921%_
                     _%hd4577845925%_
                     _%tl4577945928%_
                     _%e4578045931%_
                     _%hd4578145935%_
                     _%tl4578245938%_
                     _%e4579645840%_
                     _%hd4579745844%_
                     _%tl4579845847%_
                     _%__splice4807148072%_
                     _%target4579945850%_
                     _%tl4580145853%_)
                    (let () (declare (not safe)) (_%g4577345813%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4577345813%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4577345813%_))))))
                                (if (gx#stx-pair? _%hd4578145935%_)
                                    (let ((_%e4579645840%_
                                           (gx#syntax-e _%hd4578145935%_)))
                                      (let ((_%tl4579845847%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4579645840%_)))
                                            (_%hd4579745844%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4579645840%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4578245938%_)
                                            (let ((_%__splice4807148072%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4578245938%_
                                                    '0)))
                                              (let ((_%tl4580145853%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4807148072%_
                                                        '1)))
                                                    (_%target4579945850%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4807148072%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4580145853%_)
                                                    (_%__match4811948120%_
                                                     _%e4577745921%_
                                                     _%hd4577845925%_
                                                     _%tl4577945928%_
                                                     _%e4578045931%_
                                                     _%hd4578145935%_
                                                     _%tl4578245938%_
                                                     _%e4579645840%_
                                                     _%hd4579745844%_
                                                     _%tl4579845847%_
                                                     _%__splice4807148072%_
                                                     _%target4579945850%_
                                                     _%tl4580145853%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4577345813%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4577345813%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4577345813%_))))))
                        (let () (declare (not safe)) (_%g4577345813%_)))))
                (let () (declare (not safe)) (_%g4577345813%_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_%stx45973%_)
       (let* ((_%g4597645996%_
               (lambda (_%g4597745992%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4597745992%_)))
              (_%g4597546067%_
               (lambda (_%g4597746000%_)
                 (if (gx#stx-pair? _%g4597746000%_)
                     (let ((_%e4597946003%_ (gx#syntax-e _%g4597746000%_)))
                       (let ((_%hd4598046007%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4597946003%_)))
                             (_%tl4598146010%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4597946003%_))))
                         (if (gx#stx-pair/null? _%tl4598146010%_)
                             (let ((_g48214_
                                    (gx#syntax-split-splice
                                     _%tl4598146010%_
                                     '0)))
                               (begin
                                 (let ((_g48215_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g48214_)
                                              (##values-length _g48214_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g48215_ 2)))
                                       (error "Context expects 2 values"
                                              _g48215_)))
                                 (let ((_%target4598246013%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g48214_ 0)))
                                       (_%tl4598446016%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g48214_ 1))))
                                   (if (gx#stx-null? _%tl4598446016%_)
                                       (letrec ((_%loop4598546019%_
                                                 (lambda (_%hd4598346023%_
                                                          _%body4598946026%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4598346023%_)
                                                       (let ((_%e4598646029%_
                                                              (gx#syntax-e
                                                               _%hd4598346023%_)))
                                                         (let ((_%lp-hd4598746033%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4598646029%_)))
                       (_%lp-tl4598846036%_
                        (let () (declare (not safe)) (##cdr _%e4598646029%_))))
                   (_%loop4598546019%_
                    _%lp-tl4598846036%_
                    (cons _%lp-hd4598746033%_ _%body4598946026%_))))
               (let ((_%body4599046039%_ (reverse _%body4598946026%_)))
                 ((lambda (_%L46043%_)
                    (cons 'phi:
                          (cons '1
                                (foldr (lambda (_%g4605846061%_
                                                _%g4605946064%_)
                                         (cons _%g4605846061%_
                                               _%g4605946064%_))
                                       '()
                                       _%L46043%_))))
                  _%body4599046039%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4598546019%_
                                          _%target4598246013%_
                                          '()))
                                       (_%g4597645996%_ _%g4597746000%_)))))
                             (_%g4597645996%_ _%g4597746000%_))))
                     (_%g4597645996%_ _%g4597746000%_)))))
         (_%g4597546067%_ _%stx45973%_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_%stx46072%_)
       (let* ((_%g4607546095%_
               (lambda (_%g4607646091%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4607646091%_)))
              (_%g4607446166%_
               (lambda (_%g4607646099%_)
                 (if (gx#stx-pair? _%g4607646099%_)
                     (let ((_%e4607846102%_ (gx#syntax-e _%g4607646099%_)))
                       (let ((_%hd4607946106%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4607846102%_)))
                             (_%tl4608046109%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4607846102%_))))
                         (if (gx#stx-pair/null? _%tl4608046109%_)
                             (let ((_g48216_
                                    (gx#syntax-split-splice
                                     _%tl4608046109%_
                                     '0)))
                               (begin
                                 (let ((_g48217_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g48216_)
                                              (##values-length _g48216_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g48217_ 2)))
                                       (error "Context expects 2 values"
                                              _g48217_)))
                                 (let ((_%target4608146112%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g48216_ 0)))
                                       (_%tl4608346115%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g48216_ 1))))
                                   (if (gx#stx-null? _%tl4608346115%_)
                                       (letrec ((_%loop4608446118%_
                                                 (lambda (_%hd4608246122%_
                                                          _%body4608846125%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4608246122%_)
                                                       (let ((_%e4608546128%_
                                                              (gx#syntax-e
                                                               _%hd4608246122%_)))
                                                         (let ((_%lp-hd4608646132%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4608546128%_)))
                       (_%lp-tl4608746135%_
                        (let () (declare (not safe)) (##cdr _%e4608546128%_))))
                   (_%loop4608446118%_
                    _%lp-tl4608746135%_
                    (cons _%lp-hd4608646132%_ _%body4608846125%_))))
               (let ((_%body4608946138%_ (reverse _%body4608846125%_)))
                 ((lambda (_%L46142%_)
                    (cons 'phi:
                          (cons '-1
                                (foldr (lambda (_%g4615746160%_
                                                _%g4615846163%_)
                                         (cons _%g4615746160%_
                                               _%g4615846163%_))
                                       '()
                                       _%L46142%_))))
                  _%body4608946138%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4608446118%_
                                          _%target4608146112%_
                                          '()))
                                       (_%g4607546095%_ _%g4607646099%_)))))
                             (_%g4607546095%_ _%g4607646099%_))))
                     (_%g4607546095%_ _%g4607646099%_)))))
         (_%g4607446166%_ _%stx46072%_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_%stx46171%_)
       (let* ((_%g4617446198%_
               (lambda (_%g4617546194%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4617546194%_)))
              (_%g4617346326%_
               (lambda (_%g4617546202%_)
                 (if (gx#stx-pair? _%g4617546202%_)
                     (let ((_%e4617846205%_ (gx#syntax-e _%g4617546202%_)))
                       (let ((_%hd4617946209%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4617846205%_)))
                             (_%tl4618046212%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4617846205%_))))
                         (if (gx#stx-pair? _%tl4618046212%_)
                             (let ((_%e4618146215%_
                                    (gx#syntax-e _%tl4618046212%_)))
                               (let ((_%hd4618246219%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4618146215%_)))
                                     (_%tl4618346222%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4618146215%_))))
                                 (if (gx#stx-pair/null? _%tl4618346222%_)
                                     (let ((_g48218_
                                            (gx#syntax-split-splice
                                             _%tl4618346222%_
                                             '0)))
                                       (begin
                                         (let ((_g48219_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g48218_)
                                                      (##values-length
                                                       _g48218_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g48219_ 2)))
                                               (error "Context expects 2 values"
                                                      _g48219_)))
                                         (let ((_%target4618446225%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48218_ 0)))
                                               (_%tl4618646228%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48218_ 1))))
                                           (if (gx#stx-null? _%tl4618646228%_)
                                               (letrec ((_%loop4618746231%_
                                                         (lambda (_%hd4618546235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4619146238%_)
                   (if (gx#stx-pair? _%hd4618546235%_)
                       (let ((_%e4618846241%_ (gx#syntax-e _%hd4618546235%_)))
                         (let ((_%lp-hd4618946245%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4618846241%_)))
                               (_%lp-tl4619046248%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4618846241%_))))
                           (_%loop4618746231%_
                            _%lp-tl4619046248%_
                            (cons _%lp-hd4618946245%_ _%id4619146238%_))))
                       (let ((_%id4619246251%_ (reverse _%id4619146238%_)))
                         ((lambda (_%L46255%_ _%L46257%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4627446277%_
                                                 _%g4627546280%_)
                                          (cons _%g4627446277%_
                                                _%g4627546280%_))
                                        '()
                                        _%L46255%_))
                                (let* ((_%keys46291%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4628246285%_
                                                         _%g4628346288%_)
                                                  (cons _%g4628246285%_
                                                        _%g4628346288%_))
                                                '()
                                                _%L46255%_)))
                                       (_%keytab46302%_
                                        (let ((_%ht46294%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4629646298%_)
                                             (hash-put!
                                              _%ht46294%_
                                              _%g4629646298%_
                                              '#t))
                                           _%keys46291%_)
                                          _%ht46294%_))
                                       (_%imports46305%_
                                        (gx#core-expand-import-source
                                         _%L46257%_))
                                       (_%fold-e46321%_
                                        (letrec ((_%fold-e46308%_
                                                  (lambda (_%in46311%_
                                                           _%r46313%_)
                                                    (if (gx#module-import?
                                                         _%in46311%_)
                                                        (if (hash-get
                                                             _%keytab46302%_
                                                             (gx#module-import-name
                                                              _%in46311%_))
                                                            (cons _%in46311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r46313%_)
                    _%r46313%_)
                (if (gx#import-set? _%in46311%_)
                    (foldl _%fold-e46308%_
                           _%r46313%_
                           (gx#import-set-imports _%in46311%_))
                    _%r46313%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e46308%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e46321%_
                                               '()
                                               _%imports46305%_)))
                                (_%g4617446198%_ _%g4617546202%_)))
                          _%id4619246251%_
                          _%hd4618246219%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4618746231%_
                                                  _%target4618446225%_
                                                  '()))
                                               (_%g4617446198%_
                                                _%g4617546202%_)))))
                                     (_%g4617446198%_ _%g4617546202%_))))
                             (_%g4617446198%_ _%g4617546202%_))))
                     (_%g4617446198%_ _%g4617546202%_)))))
         (_%g4617346326%_ _%stx46171%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_%stx46331%_)
       (let* ((_%g4633446358%_
               (lambda (_%g4633546354%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4633546354%_)))
              (_%g4633346486%_
               (lambda (_%g4633546362%_)
                 (if (gx#stx-pair? _%g4633546362%_)
                     (let ((_%e4633846365%_ (gx#syntax-e _%g4633546362%_)))
                       (let ((_%hd4633946369%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4633846365%_)))
                             (_%tl4634046372%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4633846365%_))))
                         (if (gx#stx-pair? _%tl4634046372%_)
                             (let ((_%e4634146375%_
                                    (gx#syntax-e _%tl4634046372%_)))
                               (let ((_%hd4634246379%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4634146375%_)))
                                     (_%tl4634346382%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4634146375%_))))
                                 (if (gx#stx-pair/null? _%tl4634346382%_)
                                     (let ((_g48220_
                                            (gx#syntax-split-splice
                                             _%tl4634346382%_
                                             '0)))
                                       (begin
                                         (let ((_g48221_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g48220_)
                                                      (##values-length
                                                       _g48220_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g48221_ 2)))
                                               (error "Context expects 2 values"
                                                      _g48221_)))
                                         (let ((_%target4634446385%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48220_ 0)))
                                               (_%tl4634646388%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48220_ 1))))
                                           (if (gx#stx-null? _%tl4634646388%_)
                                               (letrec ((_%loop4634746391%_
                                                         (lambda (_%hd4634546395%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4635146398%_)
                   (if (gx#stx-pair? _%hd4634546395%_)
                       (let ((_%e4634846401%_ (gx#syntax-e _%hd4634546395%_)))
                         (let ((_%lp-hd4634946405%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4634846401%_)))
                               (_%lp-tl4635046408%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4634846401%_))))
                           (_%loop4634746391%_
                            _%lp-tl4635046408%_
                            (cons _%lp-hd4634946405%_ _%id4635146398%_))))
                       (let ((_%id4635246411%_ (reverse _%id4635146398%_)))
                         ((lambda (_%L46415%_ _%L46417%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4643446437%_
                                                 _%g4643546440%_)
                                          (cons _%g4643446437%_
                                                _%g4643546440%_))
                                        '()
                                        _%L46415%_))
                                (let* ((_%keys46451%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4644246445%_
                                                         _%g4644346448%_)
                                                  (cons _%g4644246445%_
                                                        _%g4644346448%_))
                                                '()
                                                _%L46415%_)))
                                       (_%keytab46462%_
                                        (let ((_%ht46454%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4645646458%_)
                                             (hash-put!
                                              _%ht46454%_
                                              _%g4645646458%_
                                              '#t))
                                           _%keys46451%_)
                                          _%ht46454%_))
                                       (_%imports46465%_
                                        (gx#core-expand-import-source
                                         _%L46417%_))
                                       (_%fold-e46481%_
                                        (letrec ((_%fold-e46468%_
                                                  (lambda (_%in46471%_
                                                           _%r46473%_)
                                                    (if (gx#module-import?
                                                         _%in46471%_)
                                                        (if (hash-get
                                                             _%keytab46462%_
                                                             (gx#module-import-name
                                                              _%in46471%_))
                                                            _%r46473%_
                                                            (cons _%in46471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r46473%_))
                (if (gx#import-set? _%in46471%_)
                    (foldl _%fold-e46468%_
                           _%r46473%_
                           (gx#import-set-imports _%in46471%_))
                    (cons _%in46471%_ _%r46473%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e46468%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e46481%_
                                               '()
                                               _%imports46465%_)))
                                (_%g4633446358%_ _%g4633546362%_)))
                          _%id4635246411%_
                          _%hd4634246379%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4634746391%_
                                                  _%target4634446385%_
                                                  '()))
                                               (_%g4633446358%_
                                                _%g4633546362%_)))))
                                     (_%g4633446358%_ _%g4633546362%_))))
                             (_%g4633446358%_ _%g4633546362%_))))
                     (_%g4633446358%_ _%g4633546362%_)))))
         (_%g4633346486%_ _%stx46331%_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_%in46538%_ _%rename46540%_)
      (gx#make-module-import
       (gx#module-import-source _%in46538%_)
       _%rename46540%_
       (gx#module-import-phi _%in46538%_)
       (gx#module-import-weak? _%in46538%_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_%name46491%_ _%pre46493%_)
      (let* ((_%name4649446502%_ _%name46491%_)
             (_%else4649646514%_
              (lambda () (make-symbol _%pre46493%_ _%name46491%_)))
             (_%K4649846522%_
              (lambda (_%mark46518%_ _%id46520%_)
                (cons (make-symbol _%pre46493%_ _%id46520%_) _%mark46518%_))))
        (if (pair? _%name4649446502%_)
            (let ((_%hd4649946526%_
                   (let () (declare (not safe)) (##car _%name4649446502%_)))
                  (_%tl4650046529%_
                   (let () (declare (not safe)) (##cdr _%name4649446502%_))))
              (let* ((_%id46532%_ _%hd4649946526%_)
                     (_%mark46535%_ _%tl4650046529%_))
                (_%K4649846522%_ _%mark46535%_ _%id46532%_)))
            (_%else4649646514%_)))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_%stx46542%_)
       (let* ((_%g4654546578%_
               (lambda (_%g4654646574%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4654646574%_)))
              (_%g4654446773%_
               (lambda (_%g4654646582%_)
                 (if (gx#stx-pair? _%g4654646582%_)
                     (let ((_%e4655046585%_ (gx#syntax-e _%g4654646582%_)))
                       (let ((_%hd4655146589%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4655046585%_)))
                             (_%tl4655246592%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4655046585%_))))
                         (if (gx#stx-pair? _%tl4655246592%_)
                             (let ((_%e4655346595%_
                                    (gx#syntax-e _%tl4655246592%_)))
                               (let ((_%hd4655446599%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4655346595%_)))
                                     (_%tl4655546602%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4655346595%_))))
                                 (if (gx#stx-pair/null? _%tl4655546602%_)
                                     (let ((_g48222_
                                            (gx#syntax-split-splice
                                             _%tl4655546602%_
                                             '0)))
                                       (begin
                                         (let ((_g48223_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g48222_)
                                                      (##values-length
                                                       _g48222_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g48223_ 2)))
                                               (error "Context expects 2 values"
                                                      _g48223_)))
                                         (let ((_%target4655646605%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48222_ 0)))
                                               (_%tl4655846608%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48222_ 1))))
                                           (if (gx#stx-null? _%tl4655846608%_)
                                               (letrec ((_%loop4655946611%_
                                                         (lambda (_%hd4655746615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4656346618%_
                          _%id4656446620%_)
                   (if (gx#stx-pair? _%hd4655746615%_)
                       (let ((_%e4656046623%_ (gx#syntax-e _%hd4655746615%_)))
                         (let ((_%lp-hd4656146627%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4656046623%_)))
                               (_%lp-tl4656246630%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4656046623%_))))
                           (if (gx#stx-pair? _%lp-hd4656146627%_)
                               (let ((_%e4656746633%_
                                      (gx#syntax-e _%lp-hd4656146627%_)))
                                 (let ((_%hd4656846637%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4656746633%_)))
                                       (_%tl4656946640%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4656746633%_))))
                                   (if (gx#stx-pair? _%tl4656946640%_)
                                       (let ((_%e4657046643%_
                                              (gx#syntax-e _%tl4656946640%_)))
                                         (let ((_%hd4657146647%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4657046643%_)))
                                               (_%tl4657246650%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4657046643%_))))
                                           (if (gx#stx-null? _%tl4657246650%_)
                                               (_%loop4655946611%_
                                                _%lp-tl4656246630%_
                                                (cons _%hd4657146647%_
                                                      _%new-id4656346618%_)
                                                (cons _%hd4656846637%_
                                                      _%id4656446620%_))
                                               (_%g4654546578%_
                                                _%g4654646582%_))))
                                       (_%g4654546578%_ _%g4654646582%_))))
                               (_%g4654546578%_ _%g4654646582%_))))
                       (let ((_%new-id4656546653%_
                              (reverse _%new-id4656346618%_))
                             (_%id4656646656%_ (reverse _%id4656446620%_)))
                         ((lambda (_%L46659%_ _%L46661%_ _%L46662%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4668046683%_
                                                      _%g4668146686%_)
                                               (cons _%g4668046683%_
                                                     _%g4668146686%_))
                                             '()
                                             _%L46661%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4668846691%_
                                                      _%g4668946694%_)
                                               (cons _%g4668846691%_
                                                     _%g4668946694%_))
                                             '()
                                             _%L46659%_)))
                                (let* ((_%keytab46697%_ (make-hash-table))
                                       (_%found46700%_ (make-hash-table))
                                       (_%_46723%_
                                        (for-each
                                         (lambda (_%id46703%_ _%new-id46705%_)
                                           (hash-put!
                                            _%keytab46697%_
                                            (gx#core-identifier-key
                                             _%id46703%_)
                                            (gx#core-identifier-key
                                             _%new-id46705%_)))
                                         (foldr (lambda (_%g4670646709%_
                                                         _%g4670746712%_)
                                                  (cons _%g4670646709%_
                                                        _%g4670746712%_))
                                                '()
                                                _%L46661%_)
                                         (foldr (lambda (_%g4671446717%_
                                                         _%g4671546720%_)
                                                  (cons _%g4671446717%_
                                                        _%g4671546720%_))
                                                '()
                                                _%L46659%_)))
                                       (_%imports46726%_
                                        (gx#core-expand-import-source
                                         _%L46662%_))
                                       (_%fold-e46754%_
                                        (letrec ((_%fold-e46729%_
                                                  (lambda (_%in46732%_
                                                           _%r46734%_)
                                                    (if (gx#module-import?
                                                         _%in46732%_)
                                                        (let* ((_%name46738%_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in46732%_))
                       (_%$e46741%_ (hash-get _%keytab46697%_ _%name46738%_)))
                  (if _%$e46741%_
                      ((lambda (_%rename46745%_)
                         (hash-put! _%found46700%_ _%name46738%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                _%in46732%_
                                _%rename46745%_)
                               _%r46734%_))
                       _%$e46741%_)
                      (cons _%in46732%_ _%r46734%_)))
                (if (gx#import-set? _%in46732%_)
                    (foldl _%fold-e46729%_
                           _%r46734%_
                           (gx#import-set-imports _%in46732%_))
                    (cons _%in46732%_ _%r46734%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e46729%_))
                                       (_%new-imports46757%_
                                        (foldl _%fold-e46754%_
                                               '()
                                               _%imports46726%_)))
                                  (for-each
                                   (lambda (_%id46762%_)
                                     (if (hash-get
                                          _%found46700%_
                                          (gx#core-identifier-key _%id46762%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _%stx46542%_
                                          _%id46762%_)))
                                   (foldr (lambda (_%g4676446767%_
                                                   _%g4676546770%_)
                                            (cons _%g4676446767%_
                                                  _%g4676546770%_))
                                          '()
                                          _%L46661%_))
                                  (cons 'begin: _%new-imports46757%_))
                                (_%g4654546578%_ _%g4654646582%_)))
                          _%new-id4656546653%_
                          _%id4656646656%_
                          _%hd4655446599%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4655946611%_
                                                  _%target4655646605%_
                                                  '()
                                                  '()))
                                               (_%g4654546578%_
                                                _%g4654646582%_)))))
                                     (_%g4654546578%_ _%g4654646582%_))))
                             (_%g4654546578%_ _%g4654646582%_))))
                     (_%g4654546578%_ _%g4654646582%_)))))
         (_%g4654446773%_ _%stx46542%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_%stx46778%_)
       (let* ((_%g4678146799%_
               (lambda (_%g4678246795%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4678246795%_)))
              (_%g4678046884%_
               (lambda (_%g4678246803%_)
                 (if (gx#stx-pair? _%g4678246803%_)
                     (let ((_%e4678546806%_ (gx#syntax-e _%g4678246803%_)))
                       (let ((_%hd4678646810%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4678546806%_)))
                             (_%tl4678746813%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4678546806%_))))
                         (if (gx#stx-pair? _%tl4678746813%_)
                             (let ((_%e4678846816%_
                                    (gx#syntax-e _%tl4678746813%_)))
                               (let ((_%hd4678946820%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4678846816%_)))
                                     (_%tl4679046823%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4678846816%_))))
                                 (if (gx#stx-pair? _%tl4679046823%_)
                                     (let ((_%e4679146826%_
                                            (gx#syntax-e _%tl4679046823%_)))
                                       (let ((_%hd4679246830%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4679146826%_)))
                                             (_%tl4679346833%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4679146826%_))))
                                         (if (gx#stx-null? _%tl4679346833%_)
                                             ((lambda (_%L46836%_ _%L46838%_)
                                                (if (gx#identifier? _%L46836%_)
                                                    (let* ((_%pre46854%_
                                                            (gx#stx-e
                                                             _%L46836%_))
                                                           (_%imports46857%_
                                                            (gx#core-expand-import-source
                                                             _%L46838%_))
                                                           (_%rename-e46863%_
                                                            (lambda (_%name46860%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name46860%_
                                                               _%pre46854%_)))
                                                           (_%fold-e46879%_
                                                            (letrec ((_%fold-e46866%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%in46869%_ _%r46871%_)
                                (if (gx#module-import? _%in46869%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                           _%in46869%_
                                           (_%rename-e46863%_
                                            (gx#module-import-name
                                             _%in46869%_)))
                                          _%r46871%_)
                                    (if (gx#import-set? _%in46869%_)
                                        (foldl _%fold-e46866%_
                                               _%r46871%_
                                               (gx#import-set-imports
                                                _%in46869%_))
                                        (cons _%in46869%_ _%r46871%_))))))
                      _%fold-e46866%_)))
              (cons 'begin: (foldl _%fold-e46879%_ '() _%imports46857%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4678146799%_
                                                     _%g4678246803%_)))
                                              _%hd4679246830%_
                                              _%hd4678946820%_)
                                             (_%g4678146799%_
                                              _%g4678246803%_))))
                                     (_%g4678146799%_ _%g4678246803%_))))
                             (_%g4678146799%_ _%g4678246803%_))))
                     (_%g4678146799%_ _%g4678246803%_)))))
         (_%g4678046884%_ _%stx46778%_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_%stx46888%_)
       (letrec ((_%flatten46891%_
                 (lambda (_%list-of-lists47146%_)
                   (foldr (lambda (_%v47149%_ _%acc47151%_)
                            (if (null? _%v47149%_)
                                _%acc47151%_
                                (if (pair? _%v47149%_)
                                    (append (_%flatten46891%_ _%v47149%_)
                                            _%acc47151%_)
                                    (cons _%v47149%_ _%acc47151%_))))
                          '()
                          _%list-of-lists47146%_)))
                (_%expand-path46893%_
                 (lambda (_%top47014%_ _%mod47016%_)
                   (let* ((_%__stx4812248123%_ _%mod47016%_)
                          (_%g4701947041%_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%__stx4812248123%_))))
                     (let ((_%__kont4812548126%_
                            (lambda (_%L47109%_ _%L47111%_)
                              (map (lambda (_%mod47126%_)
                                     (gx#stx-identifier
                                      _%top47014%_
                                      _%top47014%_
                                      '"/"
                                      _%mod47126%_))
                                   (_%flatten46891%_
                                    (map (lambda (_%g4712847130%_)
                                           (_%expand-path46893%_
                                            _%L47111%_
                                            _%g4712847130%_))
                                         (foldr (lambda (_%g4713347136%_
                                                         _%g4713447139%_)
                                                  (cons _%g4713347136%_
                                                        _%g4713447139%_))
                                                '()
                                                _%L47109%_))))))
                           (_%__kont4812948130%_
                            (lambda (_%L47048%_)
                              (gx#stx-identifier
                               _%top47014%_
                               _%top47014%_
                               '"/"
                               _%L47048%_))))
                       (let* ((_%g4701847062%_
                               (lambda ()
                                 (let ((_%L47048%_ _%__stx4812248123%_))
                                   (if (or (gx#identifier? _%L47048%_)
                                           (gx#stx-fixnum? _%L47048%_))
                                       (_%__kont4812948130%_ _%L47048%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4701947041%_))))))
                              (_%__match4814548146%_
                               (lambda (_%e4702347069%_
                                        _%hd4702447073%_
                                        _%tl4702547076%_
                                        _%__splice4812748128%_
                                        _%target4702647079%_
                                        _%tl4702847082%_)
                                 (letrec ((_%loop4702947085%_
                                           (lambda (_%hd4702747089%_
                                                    _%mod4703347092%_)
                                             (if (gx#stx-pair?
                                                  _%hd4702747089%_)
                                                 (let ((_%e4703047095%_
                                                        (gx#syntax-e
                                                         _%hd4702747089%_)))
                                                   (let ((_%lp-tl4703247102%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4703047095%_)))
                                                         (_%lp-hd4703147099%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4703047095%_))))
                                                     (_%loop4702947085%_
                                                      _%lp-tl4703247102%_
                                                      (cons _%lp-hd4703147099%_
                                                            _%mod4703347092%_))))
                                                 (let ((_%mod4703447105%_
                                                        (reverse _%mod4703347092%_)))
                                                   (_%__kont4812548126%_
                                                    _%mod4703447105%_
                                                    _%hd4702447073%_))))))
                                   (_%loop4702947085%_
                                    _%target4702647079%_
                                    '())))))
                         (if (gx#stx-pair? _%__stx4812248123%_)
                             (let ((_%e4702347069%_
                                    (gx#syntax-e _%__stx4812248123%_)))
                               (let ((_%tl4702547076%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4702347069%_)))
                                     (_%hd4702447073%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4702347069%_))))
                                 (if (gx#stx-pair/null? _%tl4702547076%_)
                                     (let ((_%__splice4812748128%_
                                            (gx#syntax-split-splice->vector
                                             _%tl4702547076%_
                                             '0)))
                                       (let ((_%tl4702847082%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4812748128%_
                                                 '1)))
                                             (_%target4702647079%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4812748128%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4702847082%_)
                                             (_%__match4814548146%_
                                              _%e4702347069%_
                                              _%hd4702447073%_
                                              _%tl4702547076%_
                                              _%__splice4812748128%_
                                              _%target4702647079%_
                                              _%tl4702847082%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4701847062%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4701847062%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4701847062%_)))))))))
         (let* ((_%g4689546919%_
                 (lambda (_%g4689646915%_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%g4689646915%_)))
                (_%g4689447010%_
                 (lambda (_%g4689646923%_)
                   (if (gx#stx-pair? _%g4689646923%_)
                       (let ((_%e4689946926%_ (gx#syntax-e _%g4689646923%_)))
                         (let ((_%hd4690046930%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4689946926%_)))
                               (_%tl4690146933%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4689946926%_))))
                           (if (gx#stx-pair? _%tl4690146933%_)
                               (let ((_%e4690246936%_
                                      (gx#syntax-e _%tl4690146933%_)))
                                 (let ((_%hd4690346940%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4690246936%_)))
                                       (_%tl4690446943%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4690246936%_))))
                                   (if (gx#stx-pair/null? _%tl4690446943%_)
                                       (let ((_g48224_
                                              (gx#syntax-split-splice
                                               _%tl4690446943%_
                                               '0)))
                                         (begin
                                           (let ((_g48225_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g48224_)
                                                        (##values-length
                                                         _g48224_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g48225_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g48225_)))
                                           (let ((_%target4690546946%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g48224_ 0)))
                                                 (_%tl4690746949%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g48224_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl4690746949%_)
                                                 (letrec ((_%loop4690846952%_
                                                           (lambda (_%hd4690646956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%mod4691246959%_)
                     (if (gx#stx-pair? _%hd4690646956%_)
                         (let ((_%e4690946962%_
                                (gx#syntax-e _%hd4690646956%_)))
                           (let ((_%lp-hd4691046966%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4690946962%_)))
                                 (_%lp-tl4691146969%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4690946962%_))))
                             (_%loop4690846952%_
                              _%lp-tl4691146969%_
                              (cons _%lp-hd4691046966%_ _%mod4691246959%_))))
                         (let ((_%mod4691346972%_ (reverse _%mod4691246959%_)))
                           ((lambda (_%L46976%_ _%L46978%_)
                              (cons 'begin:
                                    (_%flatten46891%_
                                     (map (lambda (_%g4699646998%_)
                                            (_%expand-path46893%_
                                             _%L46978%_
                                             _%g4699646998%_))
                                          (foldr (lambda (_%g4700147004%_
                                                          _%g4700247007%_)
                                                   (cons _%g4700147004%_
                                                         _%g4700247007%_))
                                                 '()
                                                 _%L46976%_)))))
                            _%mod4691346972%_
                            _%hd4690346940%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop4690846952%_
                                                    _%target4690546946%_
                                                    '()))
                                                 (_%g4689546919%_
                                                  _%g4689646923%_)))))
                                       (_%g4689546919%_ _%g4689646923%_))))
                               (_%g4689546919%_ _%g4689646923%_))))
                       (_%g4689546919%_ _%g4689646923%_)))))
           (_%g4689447010%_ _%stx46888%_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_%stx47161%_)
       (let* ((_%g4716447188%_
               (lambda (_%g4716547184%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4716547184%_)))
              (_%g4716347316%_
               (lambda (_%g4716547192%_)
                 (if (gx#stx-pair? _%g4716547192%_)
                     (let ((_%e4716847195%_ (gx#syntax-e _%g4716547192%_)))
                       (let ((_%hd4716947199%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4716847195%_)))
                             (_%tl4717047202%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4716847195%_))))
                         (if (gx#stx-pair? _%tl4717047202%_)
                             (let ((_%e4717147205%_
                                    (gx#syntax-e _%tl4717047202%_)))
                               (let ((_%hd4717247209%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4717147205%_)))
                                     (_%tl4717347212%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4717147205%_))))
                                 (if (gx#stx-pair/null? _%tl4717347212%_)
                                     (let ((_g48226_
                                            (gx#syntax-split-splice
                                             _%tl4717347212%_
                                             '0)))
                                       (begin
                                         (let ((_g48227_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g48226_)
                                                      (##values-length
                                                       _g48226_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g48227_ 2)))
                                               (error "Context expects 2 values"
                                                      _g48227_)))
                                         (let ((_%target4717447215%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48226_ 0)))
                                               (_%tl4717647218%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48226_ 1))))
                                           (if (gx#stx-null? _%tl4717647218%_)
                                               (letrec ((_%loop4717747221%_
                                                         (lambda (_%hd4717547225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4718147228%_)
                   (if (gx#stx-pair? _%hd4717547225%_)
                       (let ((_%e4717847231%_ (gx#syntax-e _%hd4717547225%_)))
                         (let ((_%lp-hd4717947235%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4717847231%_)))
                               (_%lp-tl4718047238%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4717847231%_))))
                           (_%loop4717747221%_
                            _%lp-tl4718047238%_
                            (cons _%lp-hd4717947235%_ _%id4718147228%_))))
                       (let ((_%id4718247241%_ (reverse _%id4718147228%_)))
                         ((lambda (_%L47245%_ _%L47247%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4726447267%_
                                                 _%g4726547270%_)
                                          (cons _%g4726447267%_
                                                _%g4726547270%_))
                                        '()
                                        _%L47245%_))
                                (let* ((_%keys47281%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4727247275%_
                                                         _%g4727347278%_)
                                                  (cons _%g4727247275%_
                                                        _%g4727347278%_))
                                                '()
                                                _%L47245%_)))
                                       (_%keytab47292%_
                                        (let ((_%ht47284%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4728647288%_)
                                             (hash-put!
                                              _%ht47284%_
                                              _%g4728647288%_
                                              '#t))
                                           _%keys47281%_)
                                          _%ht47284%_))
                                       (_%exports47295%_
                                        (gx#core-expand-export-source
                                         _%L47247%_))
                                       (_%fold-e47311%_
                                        (letrec ((_%fold-e47298%_
                                                  (lambda (_%out47301%_
                                                           _%r47303%_)
                                                    (if (gx#module-export?
                                                         _%out47301%_)
                                                        (if (hash-get
                                                             _%keytab47292%_
                                                             (gx#module-export-name
                                                              _%out47301%_))
                                                            _%r47303%_
                                                            (cons _%out47301%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r47303%_))
                (if (gx#export-set? _%out47301%_)
                    (foldl _%fold-e47298%_
                           _%r47303%_
                           (gx#export-set-exports _%out47301%_))
                    _%r47303%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47298%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e47311%_
                                               '()
                                               _%exports47295%_)))
                                (_%g4716447188%_ _%g4716547192%_)))
                          _%id4718247241%_
                          _%hd4717247209%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4717747221%_
                                                  _%target4717447215%_
                                                  '()))
                                               (_%g4716447188%_
                                                _%g4716547192%_)))))
                                     (_%g4716447188%_ _%g4716547192%_))))
                             (_%g4716447188%_ _%g4716547192%_))))
                     (_%g4716447188%_ _%g4716547192%_)))))
         (_%g4716347316%_ _%stx47161%_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_%out47321%_ _%rename47323%_)
      (gx#make-module-export
       (gx#module-export-context _%out47321%_)
       (gx#module-export-key _%out47321%_)
       (gx#module-export-phi _%out47321%_)
       _%rename47323%_
       (gx#module-export-weak? _%out47321%_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_%stx47325%_)
       (let* ((_%g4732847361%_
               (lambda (_%g4732947357%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4732947357%_)))
              (_%g4732747556%_
               (lambda (_%g4732947365%_)
                 (if (gx#stx-pair? _%g4732947365%_)
                     (let ((_%e4733347368%_ (gx#syntax-e _%g4732947365%_)))
                       (let ((_%hd4733447372%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4733347368%_)))
                             (_%tl4733547375%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4733347368%_))))
                         (if (gx#stx-pair? _%tl4733547375%_)
                             (let ((_%e4733647378%_
                                    (gx#syntax-e _%tl4733547375%_)))
                               (let ((_%hd4733747382%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4733647378%_)))
                                     (_%tl4733847385%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4733647378%_))))
                                 (if (gx#stx-pair/null? _%tl4733847385%_)
                                     (let ((_g48228_
                                            (gx#syntax-split-splice
                                             _%tl4733847385%_
                                             '0)))
                                       (begin
                                         (let ((_g48229_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g48228_)
                                                      (##values-length
                                                       _g48228_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g48229_ 2)))
                                               (error "Context expects 2 values"
                                                      _g48229_)))
                                         (let ((_%target4733947388%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48228_ 0)))
                                               (_%tl4734147391%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48228_ 1))))
                                           (if (gx#stx-null? _%tl4734147391%_)
                                               (letrec ((_%loop4734247394%_
                                                         (lambda (_%hd4734047398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4734647401%_
                          _%id4734747403%_)
                   (if (gx#stx-pair? _%hd4734047398%_)
                       (let ((_%e4734347406%_ (gx#syntax-e _%hd4734047398%_)))
                         (let ((_%lp-hd4734447410%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4734347406%_)))
                               (_%lp-tl4734547413%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4734347406%_))))
                           (if (gx#stx-pair? _%lp-hd4734447410%_)
                               (let ((_%e4735047416%_
                                      (gx#syntax-e _%lp-hd4734447410%_)))
                                 (let ((_%hd4735147420%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4735047416%_)))
                                       (_%tl4735247423%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4735047416%_))))
                                   (if (gx#stx-pair? _%tl4735247423%_)
                                       (let ((_%e4735347426%_
                                              (gx#syntax-e _%tl4735247423%_)))
                                         (let ((_%hd4735447430%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4735347426%_)))
                                               (_%tl4735547433%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4735347426%_))))
                                           (if (gx#stx-null? _%tl4735547433%_)
                                               (_%loop4734247394%_
                                                _%lp-tl4734547413%_
                                                (cons _%hd4735447430%_
                                                      _%new-id4734647401%_)
                                                (cons _%hd4735147420%_
                                                      _%id4734747403%_))
                                               (_%g4732847361%_
                                                _%g4732947365%_))))
                                       (_%g4732847361%_ _%g4732947365%_))))
                               (_%g4732847361%_ _%g4732947365%_))))
                       (let ((_%new-id4734847436%_
                              (reverse _%new-id4734647401%_))
                             (_%id4734947439%_ (reverse _%id4734747403%_)))
                         ((lambda (_%L47442%_ _%L47444%_ _%L47445%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4746347466%_
                                                      _%g4746447469%_)
                                               (cons _%g4746347466%_
                                                     _%g4746447469%_))
                                             '()
                                             _%L47444%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4747147474%_
                                                      _%g4747247477%_)
                                               (cons _%g4747147474%_
                                                     _%g4747247477%_))
                                             '()
                                             _%L47442%_)))
                                (let* ((_%keytab47480%_ (make-hash-table))
                                       (_%found47483%_ (make-hash-table))
                                       (_%_47506%_
                                        (for-each
                                         (lambda (_%id47486%_ _%new-id47488%_)
                                           (hash-put!
                                            _%keytab47480%_
                                            (gx#core-identifier-key
                                             _%id47486%_)
                                            (gx#core-identifier-key
                                             _%new-id47488%_)))
                                         (foldr (lambda (_%g4748947492%_
                                                         _%g4749047495%_)
                                                  (cons _%g4748947492%_
                                                        _%g4749047495%_))
                                                '()
                                                _%L47444%_)
                                         (foldr (lambda (_%g4749747500%_
                                                         _%g4749847503%_)
                                                  (cons _%g4749747500%_
                                                        _%g4749847503%_))
                                                '()
                                                _%L47442%_)))
                                       (_%exports47509%_
                                        (gx#core-expand-export-source
                                         _%L47445%_))
                                       (_%fold-e47537%_
                                        (letrec ((_%fold-e47512%_
                                                  (lambda (_%out47515%_
                                                           _%r47517%_)
                                                    (if (gx#module-export?
                                                         _%out47515%_)
                                                        (let* ((_%name47521%_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out47515%_))
                       (_%$e47524%_ (hash-get _%keytab47480%_ _%name47521%_)))
                  (if _%$e47524%_
                      ((lambda (_%rename47528%_)
                         (hash-put! _%found47483%_ _%name47521%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                _%out47515%_
                                _%rename47528%_)
                               _%r47517%_))
                       _%$e47524%_)
                      (cons _%out47515%_ _%r47517%_)))
                (if (gx#export-set? _%out47515%_)
                    (foldl _%fold-e47512%_
                           _%r47517%_
                           (gx#export-set-exports _%out47515%_))
                    (cons _%out47515%_ _%r47517%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47512%_))
                                       (_%new-exports47540%_
                                        (foldl _%fold-e47537%_
                                               '()
                                               _%exports47509%_)))
                                  (for-each
                                   (lambda (_%id47545%_)
                                     (if (hash-get
                                          _%found47483%_
                                          (gx#core-identifier-key _%id47545%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _%stx47325%_
                                          _%id47545%_)))
                                   (foldr (lambda (_%g4754747550%_
                                                   _%g4754847553%_)
                                            (cons _%g4754747550%_
                                                  _%g4754847553%_))
                                          '()
                                          _%L47444%_))
                                  (cons 'begin: _%new-exports47540%_))
                                (_%g4732847361%_ _%g4732947365%_)))
                          _%new-id4734847436%_
                          _%id4734947439%_
                          _%hd4733747382%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4734247394%_
                                                  _%target4733947388%_
                                                  '()
                                                  '()))
                                               (_%g4732847361%_
                                                _%g4732947365%_)))))
                                     (_%g4732847361%_ _%g4732947365%_))))
                             (_%g4732847361%_ _%g4732947365%_))))
                     (_%g4732847361%_ _%g4732947365%_)))))
         (_%g4732747556%_ _%stx47325%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_%stx47561%_)
       (let* ((_%g4756447582%_
               (lambda (_%g4756547578%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4756547578%_)))
              (_%g4756347667%_
               (lambda (_%g4756547586%_)
                 (if (gx#stx-pair? _%g4756547586%_)
                     (let ((_%e4756847589%_ (gx#syntax-e _%g4756547586%_)))
                       (let ((_%hd4756947593%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4756847589%_)))
                             (_%tl4757047596%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4756847589%_))))
                         (if (gx#stx-pair? _%tl4757047596%_)
                             (let ((_%e4757147599%_
                                    (gx#syntax-e _%tl4757047596%_)))
                               (let ((_%hd4757247603%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4757147599%_)))
                                     (_%tl4757347606%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4757147599%_))))
                                 (if (gx#stx-pair? _%tl4757347606%_)
                                     (let ((_%e4757447609%_
                                            (gx#syntax-e _%tl4757347606%_)))
                                       (let ((_%hd4757547613%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4757447609%_)))
                                             (_%tl4757647616%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4757447609%_))))
                                         (if (gx#stx-null? _%tl4757647616%_)
                                             ((lambda (_%L47619%_ _%L47621%_)
                                                (if (gx#identifier? _%L47619%_)
                                                    (let* ((_%pre47637%_
                                                            (gx#stx-e
                                                             _%L47619%_))
                                                           (_%exports47640%_
                                                            (gx#core-expand-export-source
                                                             _%L47621%_))
                                                           (_%rename-e47646%_
                                                            (lambda (_%name47643%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name47643%_
                                                               _%pre47637%_)))
                                                           (_%fold-e47662%_
                                                            (letrec ((_%fold-e47649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%out47652%_ _%r47654%_)
                                (if (gx#module-export? _%out47652%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                           _%out47652%_
                                           (_%rename-e47646%_
                                            (gx#module-export-name
                                             _%out47652%_)))
                                          _%r47654%_)
                                    (if (gx#export-set? _%out47652%_)
                                        (foldl _%fold-e47649%_
                                               _%r47654%_
                                               (gx#export-set-exports
                                                _%out47652%_))
                                        (cons _%out47652%_ _%r47654%_))))))
                      _%fold-e47649%_)))
              (cons 'begin: (foldl _%fold-e47662%_ '() _%exports47640%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4756447582%_
                                                     _%g4756547586%_)))
                                              _%hd4757547613%_
                                              _%hd4757247603%_)
                                             (_%g4756447582%_
                                              _%g4756547586%_))))
                                     (_%g4756447582%_ _%g4756547586%_))))
                             (_%g4756447582%_ _%g4756547586%_))))
                     (_%g4756447582%_ _%g4756547586%_)))))
         (_%g4756347667%_ _%stx47561%_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_%stx47671%_)
       (letrec ((_%identifiers47674%_
                 (lambda (_%id47906%_ _%unchecked?47908%_)
                   (let ((_%info47910%_
                          (gx#syntax-local-value _%id47906%_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%info47910%_))
                         (cons _%id47906%_
                               (cons (let ((__obj48207 _%info47910%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj48207
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj48207
                                              '3
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj48207
                                            'type-descriptor)))
                                     (foldr cons
                                            (cons (let ((__obj48208
                                                         _%info47910%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj48208
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj48208
                                                           '14
                                                           '#f
                                                           '#f))
                                                        (unchecked-slot-ref
                                                         __obj48208
                                                         'predicate)))
                                                  (foldr cons
                                                         (foldr cons
                                                                (if _%unchecked?47908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons
                                   (map cdr
                                        (let ((__obj48209 _%info47910%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj48209
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj48209
                                                 '18
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj48209
                                               'unchecked-mutators))))
                                   (map cdr
                                        (let ((__obj48210 _%info47910%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj48210
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj48210
                                                 '17
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj48210
                                               'unchecked-accessors)))))
                            '())
                        (map cdr
                             (let ((__obj48211 _%info47910%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj48211
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj48211
                                      '16
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj48211
                                    'mutators)))))
                 (map cdr
                      (let ((__obj48212 _%info47910%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj48212
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj48212
                               '15
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj48212 'accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_%ctor47913%_
                                                   (let ((__obj48213
                                                          _%info47910%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj48213
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj48213
                                                            '13
                                                            '#f
                                                            '#f))
                                                         (unchecked-slot-ref
                                                          __obj48213
                                                          'constructor)))))
                                              (if _%ctor47913%_
                                                  (cons _%ctor47913%_ '())
                                                  '())))))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _%stx47671%_
                          _%id47906%_))))))
         (let* ((_%__stx4814848149%_ _%stx47671%_)
                (_%g4767847719%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%__stx4814848149%_))))
           (let ((_%__kont4815148152%_
                  (lambda (_%L47867%_ _%L47869%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4788847890%_)
                              (_%identifiers47674%_
                               _%g4788847890%_
                               (gx#stx-e _%L47869%_)))
                            (foldr (lambda (_%g4789347896%_ _%g4789447899%_)
                                     (cons _%g4789347896%_ _%g4789447899%_))
                                   '()
                                   _%L47867%_))))))
                 (_%__kont4815548156%_
                  (lambda (_%L47766%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4778247784%_)
                              (_%identifiers47674%_ _%g4778247784%_ '#f))
                            (foldr (lambda (_%g4778747790%_ _%g4778847793%_)
                                     (cons _%g4778747790%_ _%g4778847793%_))
                                   '()
                                   _%L47766%_)))))))
             (let* ((_%__match4820548206%_
                     (lambda (_%e4770247726%_
                              _%hd4770347730%_
                              _%tl4770447733%_
                              _%__splice4815748158%_
                              _%target4770547736%_
                              _%tl4770747739%_)
                       (letrec ((_%loop4770847742%_
                                 (lambda (_%hd4770647746%_ _%id4771247749%_)
                                   (if (gx#stx-pair? _%hd4770647746%_)
                                       (let ((_%e4770947752%_
                                              (gx#syntax-e _%hd4770647746%_)))
                                         (let ((_%lp-tl4771147759%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4770947752%_)))
                                               (_%lp-hd4771047756%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4770947752%_))))
                                           (_%loop4770847742%_
                                            _%lp-tl4771147759%_
                                            (cons _%lp-hd4771047756%_
                                                  _%id4771247749%_))))
                                       (let ((_%id4771347762%_
                                              (reverse _%id4771247749%_)))
                                         (_%__kont4815548156%_
                                          _%id4771347762%_))))))
                         (_%loop4770847742%_ _%target4770547736%_ '()))))
                    (_%__match4819148192%_
                     (lambda (_%e4768247803%_
                              _%hd4768347807%_
                              _%tl4768447810%_
                              _%e4768547813%_
                              _%hd4768647817%_
                              _%tl4768747820%_
                              _%e4768847823%_
                              _%e4768947827%_
                              _%hd4769047831%_
                              _%tl4769147834%_
                              _%__splice4815348154%_
                              _%target4769247837%_
                              _%tl4769447840%_)
                       (letrec ((_%loop4769547843%_
                                 (lambda (_%hd4769347847%_ _%id4769947850%_)
                                   (if (gx#stx-pair? _%hd4769347847%_)
                                       (let ((_%e4769647853%_
                                              (gx#syntax-e _%hd4769347847%_)))
                                         (let ((_%lp-tl4769847860%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4769647853%_)))
                                               (_%lp-hd4769747857%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4769647853%_))))
                                           (_%loop4769547843%_
                                            _%lp-tl4769847860%_
                                            (cons _%lp-hd4769747857%_
                                                  _%id4769947850%_))))
                                       (let ((_%id4770047863%_
                                              (reverse _%id4769947850%_)))
                                         (_%__kont4815148152%_
                                          _%id4770047863%_
                                          _%hd4769047831%_))))))
                         (_%loop4769547843%_ _%target4769247837%_ '())))))
               (if (gx#stx-pair? _%__stx4814848149%_)
                   (let ((_%e4768247803%_ (gx#syntax-e _%__stx4814848149%_)))
                     (let ((_%tl4768447810%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4768247803%_)))
                           (_%hd4768347807%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4768247803%_))))
                       (if (gx#stx-pair? _%tl4768447810%_)
                           (let ((_%e4768547813%_
                                  (gx#syntax-e _%tl4768447810%_)))
                             (let ((_%tl4768747820%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4768547813%_)))
                                   (_%hd4768647817%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4768547813%_))))
                               (if (gx#stx-datum? _%hd4768647817%_)
                                   (let ((_%e4768847823%_
                                          (gx#stx-e _%hd4768647817%_)))
                                     (if (equal? _%e4768847823%_ 'unchecked:)
                                         (if (gx#stx-pair? _%tl4768747820%_)
                                             (let ((_%e4768947827%_
                                                    (gx#syntax-e
                                                     _%tl4768747820%_)))
                                               (let ((_%tl4769147834%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4768947827%_)))
                                                     (_%hd4769047831%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4768947827%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%tl4769147834%_)
                                                     (let ((_%__splice4815348154%_
                                                            (gx#syntax-split-splice->vector
                                                             _%tl4769147834%_
                                                             '0)))
                                                       (let ((_%tl4769447840%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4815348154%_ '1)))
                     (_%target4769247837%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4815348154%_ '0))))
                 (if (gx#stx-null? _%tl4769447840%_)
                     (_%__match4819148192%_
                      _%e4768247803%_
                      _%hd4768347807%_
                      _%tl4768447810%_
                      _%e4768547813%_
                      _%hd4768647817%_
                      _%tl4768747820%_
                      _%e4768847823%_
                      _%e4768947827%_
                      _%hd4769047831%_
                      _%tl4769147834%_
                      _%__splice4815348154%_
                      _%target4769247837%_
                      _%tl4769447840%_)
                     (if (gx#stx-pair/null? _%tl4768447810%_)
                         (let ((_%__splice4815748158%_
                                (gx#syntax-split-splice->vector
                                 _%tl4768447810%_
                                 '0)))
                           (let ((_%tl4770747739%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4815748158%_ '1)))
                                 (_%target4770547736%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4815748158%_ '0))))
                             (if (gx#stx-null? _%tl4770747739%_)
                                 (_%__match4820548206%_
                                  _%e4768247803%_
                                  _%hd4768347807%_
                                  _%tl4768447810%_
                                  _%__splice4815748158%_
                                  _%target4770547736%_
                                  _%tl4770747739%_)
                                 (let ()
                                   (declare (not safe))
                                   (_%g4767847719%_)))))
                         (let () (declare (not safe)) (_%g4767847719%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _%tl4768447810%_)
                                                         (let ((_%__splice4815748158%_
                                                                (gx#syntax-split-splice->vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl4768447810%_
                         '0)))
                   (let ((_%tl4770747739%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4815748158%_ '1)))
                         (_%target4770547736%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4815748158%_ '0))))
                     (if (gx#stx-null? _%tl4770747739%_)
                         (_%__match4820548206%_
                          _%e4768247803%_
                          _%hd4768347807%_
                          _%tl4768447810%_
                          _%__splice4815748158%_
                          _%target4770547736%_
                          _%tl4770747739%_)
                         (let () (declare (not safe)) (_%g4767847719%_)))))
                 (let () (declare (not safe)) (_%g4767847719%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _%tl4768447810%_)
                                                 (let ((_%__splice4815748158%_
                                                        (gx#syntax-split-splice->vector
                                                         _%tl4768447810%_
                                                         '0)))
                                                   (let ((_%tl4770747739%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4815748158%_
                                                             '1)))
                                                         (_%target4770547736%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4815748158%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4770747739%_)
                                                         (_%__match4820548206%_
                                                          _%e4768247803%_
                                                          _%hd4768347807%_
                                                          _%tl4768447810%_
                                                          _%__splice4815748158%_
                                                          _%target4770547736%_
                                                          _%tl4770747739%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4767847719%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4767847719%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4768447810%_)
                                             (let ((_%__splice4815748158%_
                                                    (gx#syntax-split-splice->vector
                                                     _%tl4768447810%_
                                                     '0)))
                                               (let ((_%tl4770747739%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4815748158%_
                                                         '1)))
                                                     (_%target4770547736%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4815748158%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4770747739%_)
                                                     (_%__match4820548206%_
                                                      _%e4768247803%_
                                                      _%hd4768347807%_
                                                      _%tl4768447810%_
                                                      _%__splice4815748158%_
                                                      _%target4770547736%_
                                                      _%tl4770747739%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4767847719%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4767847719%_)))))
                                   (if (gx#stx-pair/null? _%tl4768447810%_)
                                       (let ((_%__splice4815748158%_
                                              (gx#syntax-split-splice->vector
                                               _%tl4768447810%_
                                               '0)))
                                         (let ((_%tl4770747739%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4815748158%_
                                                   '1)))
                                               (_%target4770547736%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4815748158%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4770747739%_)
                                               (_%__match4820548206%_
                                                _%e4768247803%_
                                                _%hd4768347807%_
                                                _%tl4768447810%_
                                                _%__splice4815748158%_
                                                _%target4770547736%_
                                                _%tl4770747739%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4767847719%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4767847719%_))))))
                           (if (gx#stx-pair/null? _%tl4768447810%_)
                               (let ((_%__splice4815748158%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4768447810%_
                                       '0)))
                                 (let ((_%tl4770747739%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4815748158%_
                                           '1)))
                                       (_%target4770547736%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4815748158%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4770747739%_)
                                       (_%__match4820548206%_
                                        _%e4768247803%_
                                        _%hd4768347807%_
                                        _%tl4768447810%_
                                        _%__splice4815748158%_
                                        _%target4770547736%_
                                        _%tl4770747739%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4767847719%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4767847719%_))))))
                   (let () (declare (not safe)) (_%g4767847719%_)))))))))))
